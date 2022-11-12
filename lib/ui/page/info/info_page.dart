import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_and_seek/bloc/info/info_bloc.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';
import 'package:permission_handler/permission_handler.dart';

enum InfoType { locator, hiding }

class InfoPage extends StatelessWidget {
  final InfoType type;

  const InfoPage({super.key, required this.type});

  Future<void> _askPermissions() async {
    await [
      Permission.bluetooth,
      Permission.bluetoothAdvertise,
      Permission.microphone,
      Permission.location,
    ].request();
  }

  void _toggleAllDevices(BuildContext context) {
    context.read<InfoBloc>().add(const InfoEvent.toggleAllDevices());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: AppColors.pageGradient,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  '''Прячущиеся различаются цветами. В тихом режиме цвет переключателя будет отображться таким же цветом на экране искателя (выбирается случайным образом). \n\nВ громком режиме цвет переключателя означает тип птицы:\n''',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                BlocBuilder<InfoBloc, InfoState>(
                  builder: (_, state) => Column(
                    children: state.audioIds.keys
                        .map(
                          (key) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(
                                      int.tryParse('ff${state.audioIds[key]}', radix: 16) ?? AppColors.radar.value,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  key,
                                  style: const TextStyle(fontSize: 12, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                if (type == InfoType.locator) ...[
                  const SizedBox(height: 16),
                  const Text(
                    'По клику на график можно узнать дополнительную информацию об устройстве. Точка ниже графика означает тип устройства (синий - bluetooh, красный - микрофон).',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      BlocBuilder<InfoBloc, InfoState>(
                        builder: (_, state) => Transform.scale(
                          scale: 0.75,
                          child: CupertinoSwitch(
                            trackColor: Colors.white,
                            activeColor: AppColors.radar,
                            value: state.showAllDevices,
                            onChanged: (value) => _toggleAllDevices(context),
                          ),
                        ),
                      ),
                      const Text(
                        'Показывать все BLE устройства',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                ],
                const SizedBox(height: 16),
                const Text(
                  '''Если возникли неполадки, пожалуйста, проверьте, что Bluetooth включен, приложение получило все необходимые разрешения и попробуйте снова. На Android < 13 также необходимо включить геолокацию. Попробуйте закрыть и открыть экран снова, если что-то поломалось.''',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: _askPermissions,
                    child: const Text(
                      'Запросить разрешения',
                      style: TextStyle(fontSize: 14, color: AppColors.radar),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
