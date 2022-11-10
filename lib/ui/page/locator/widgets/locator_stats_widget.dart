import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_radar_painter.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';
import 'package:tuple/tuple.dart';

class LocatorChartWidget extends StatefulWidget {
  final List<DeviceModel> devices;

  const LocatorChartWidget({
    super.key,
    required this.devices,
  });

  @override
  State<LocatorChartWidget> createState() => _LocatorChartWidgetState();
}

class _LocatorChartWidgetState extends State<LocatorChartWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.7;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: SizedBox(
        key: ValueKey(widget.devices.length),
        height: 200,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: widget.devices
              .map(
                (device) => Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedSize(
                          alignment: Alignment.bottomCenter,
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            key: ValueKey(Tuple2(device.id, device.signal)),
                            height: max(10, 200.0 - device.signal * 1.5),
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                              color: Color(device.color),
                              border: Border.all(color: AppColors.primary.withOpacity(0.5)),
                            ),
                          ),
                        ),
                        _DeviceText(
                          text: '${device.name} \n',
                        ),
                        _DeviceText(
                          text: 'Сигнал: -${device.signal}',
                        ),
                        _DeviceText(
                          text: 'Расст: ~${device.distance} м',
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _DeviceText extends StatelessWidget {
  final String text;

  const _DeviceText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(
        text,
        maxLines: 1,
        style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),
      ),
    );
  }
}
