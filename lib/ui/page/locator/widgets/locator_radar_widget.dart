import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_radar_painter.dart';

class LocatorRadarWidget extends StatefulWidget {
  final bool isScanning;
  final VoidCallback onRefresh;
  final List<DeviceModel> devices;

  const LocatorRadarWidget({
    super.key,
    required this.isScanning,
    required this.devices,
    required this.onRefresh,
  });

  @override
  State<LocatorRadarWidget> createState() => _LocatorRadarWidgetState();
}

class _LocatorRadarWidgetState extends State<LocatorRadarWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller.addListener(() {
      if (_controller.isCompleted) {
        _controller.reset();
        _controller.forward();

        widget.onRefresh();
      }

      setState(() {});
    });

    _animation = Tween(begin: 0.0, end: pi * 2).animate(_controller);

    if (widget.isScanning) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(LocatorRadarWidget old) {
    if (widget.isScanning) {
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
    final size = MediaQuery.of(context).size.height * 0.25;
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CustomPaint(
          painter: LocatorRadarPainter(
            angle: _animation.value,
            isScanning: widget.isScanning,
            devices: widget.devices,
          ),
        ),
      ),
    );
  }
}
