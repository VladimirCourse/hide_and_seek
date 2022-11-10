import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_and_seek/bloc/locator/locator_bloc.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/ble/ble_repository.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_radar_painter.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_radar_widget.dart';
import 'package:hide_and_seek/ui/page/locator/widgets/locator_stats_widget.dart';
import 'package:hide_and_seek/ui/util/app_button_styles.dart';
import 'package:provider/provider.dart';

class LocatorPage extends StatelessWidget {
  const LocatorPage({super.key});

  void _refreshDevices(BuildContext context) {
    context.read<LocatorBloc>().add(const LocatorEvent.refreshDevices());
  }

  void _startScan(BuildContext context) {
    context.read<LocatorBloc>().add(const LocatorEvent.startScan());
  }

  void _stopScan(BuildContext context) {
    context.read<LocatorBloc>().add(const LocatorEvent.stopScan());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Локатор'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              BlocBuilder<LocatorBloc, LocatorState>(
                builder: (_, state) => state.maybeMap(
                  data: (state) => LocatorRadarWidget(
                    devices: state.devices,
                    onRefresh: () => _refreshDevices(context),
                  ),
                  orElse: () => const SizedBox(),
                ),
              ),
              BlocBuilder<LocatorBloc, LocatorState>(
                builder: (_, state) => state.maybeMap(
                  data: (state) => LocatorChartWidget(devices: state.devices),
                  orElse: () => const SizedBox(),
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                style: AppButtonStyles.main,
                onPressed: () => _startScan(context),
                child: const Text('Сканировать'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: AppButtonStyles.main,
                onPressed: () => _stopScan(context),
                child: const Text('Остановить'),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
