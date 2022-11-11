import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:tuple/tuple.dart';

class LocatorChartWidget extends StatelessWidget {
  final List<DeviceModel> devices;
  final ValueChanged<DeviceModel> onDevicePressed;

  const LocatorChartWidget({
    super.key,
    required this.devices,
    required this.onDevicePressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: devices.isNotEmpty,
            child: const Text(
              'Расстояние',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            key: ValueKey(devices.length),
            height: 180,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: devices
                  .map(
                    (device) => GestureDetector(
                      onTap: () => onDevicePressed(device),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedSize(
                                alignment: Alignment.bottomCenter,
                                duration: const Duration(milliseconds: 300),
                                child: Container(
                                  key: ValueKey(Tuple2(device.id, device.signal)),
                                  height: max(10, 140.0 - device.signal * 1.5),
                                  width: 20,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.white.withOpacity(0.1),
                                        Color(device.color),
                                        Color(device.color).withOpacity(0.1),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(device.color),
                                        blurRadius: 0.1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                '~${device.distance} м',
                                maxLines: 1,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
