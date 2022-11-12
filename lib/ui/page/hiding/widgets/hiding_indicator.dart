import 'package:flutter/material.dart';

class HidingIndicator extends StatefulWidget {
  final bool isOn;
  final Color color;
  final Widget child;

  const HidingIndicator({
    super.key,
    required this.isOn,
    required this.color,
    required this.child,
  });

  @override
  State<HidingIndicator> createState() => _HidingIndicatorState();
}

class _HidingIndicatorState extends State<HidingIndicator> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _controller.addListener(() {
      if (_controller.isCompleted) {
        _controller.reverse();
      } else if (_controller.isDismissed) {
        _controller.forward();
      }
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void didUpdateWidget(HidingIndicator old) {
    if (widget.isOn) {
      if (!_controller.isAnimating) {
        _controller.forward();
      }
    } else {
      _controller.reset();
    }

    super.didUpdateWidget(old);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: widget.isOn
            ? [
                BoxShadow(
                  color: widget.color,
                  blurRadius: 40,
                  spreadRadius: 10 + _controller.value * 15,
                ),
              ]
            : null,
      ),
      child: widget.child,
    );
  }
}
