import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hide_and_seek/model/device_model.dart';
import 'package:hide_and_seek/repository/ble/ble_repository.dart';
import 'package:provider/provider.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // List<Device> _devices = [];

  StreamSubscription? subscription;

  Future<void> _scan(BuildContext context) async {
    // print(context.read<BLERepository>().deviceId);

    context.read<BLERepository>().startScan();
    // final result = await context.read<BLERepository>().scanDevices();

    // setState(() {
    //   _devices = result;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20),
            StreamBuilder(
              stream: context.read<BLERepository>().devices,
              builder: (_, data) => Column(
                children: (data.data ?? [])
                    .map(
                      (e) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                              color: Color(int.parse('ff${e.id}', radix: 16)),
                            ),
                          ),
                          Text(
                            'Сигнал: ${e.signal}',
                            style: const TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _scan(context),
              child: Text('start'),
            ),
            ElevatedButton(
              onPressed: () => context.read<BLERepository>().stopScan(),
              child: Text(' stop'),
            ),
            ElevatedButton(
              onPressed: () async {
                print('here');
                await context.read<BLERepository>().sendSignal();
              },
              child: Text('adverties'),
            ),
          ],
        ),
      ),
    );
  }
}
