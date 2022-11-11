import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_and_seek/bloc/locator/locator_bloc.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_chart_widget.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_radar_widget.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class LocatorPage extends StatelessWidget {
  const LocatorPage({super.key});

  void _refreshDevices(BuildContext context) {
    context.read<LocatorBloc>().add(const LocatorEvent.refreshDevices());
  }

  void _startScan(BuildContext context) {
    context.read<LocatorBloc>().add(LocatorEvent.startScan(onError: () => _showError(context)));
  }

  void _stopScan(BuildContext context) {
    context.read<LocatorBloc>().add(LocatorEvent.stopScan(onError: () => _showError(context)));
  }

  void _showDeviceInfo(BuildContext context, DeviceModel device) {
    final snackBar = SnackBar(
      content: Text(
        'id: ${device.id}\nимя: ${device.name}\nрасстояние: ${device.distance} м\nсигнал: ${device.signal}\nтип: ${device.source}',
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showError(BuildContext context) {
    _refreshDevices(context);

    const snackBar = SnackBar(
      content: Text(
        'Ошибочка:( Пожалуйста, проверьте, что BT включен, приложение получило все необходимые разрешения и попробуйте снова. На старых Android также необходимо включить геолокацию.',
      ),
      duration: Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppColors.pageGradient),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Локатор'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                BlocBuilder<LocatorBloc, LocatorState>(
                  builder: (_, state) => LocatorRadarWidget(
                    isScanning: state.isScanning,
                    devices: state.devices,
                    onRefresh: () => _refreshDevices(context),
                  ),
                ),
                BlocBuilder<LocatorBloc, LocatorState>(
                  builder: (_, state) => LocatorChartWidget(
                    devices: state.devices,
                    onDevicePressed: (device) => _showDeviceInfo(context, device),
                  ),
                ),
                const SizedBox(height: 60),
                BlocBuilder<LocatorBloc, LocatorState>(
                  builder: (_, state) => Column(
                    children: [
                      Transform.scale(
                        scale: 2.0,
                        child: CupertinoSwitch(
                          value: state.isScanning,
                          activeColor: AppColors.radar,
                          trackColor: Colors.white,
                          // inactiveTrackColor: Colors.grey,
                          onChanged: (value) => value ? _startScan(context) : _stopScan(context),
                        ),
                      ),
                      const SizedBox(height: 34),
                      Text(
                        state.isScanning ? 'Идет поиск...' : 'Поиск выключен',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
