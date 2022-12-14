import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hide_and_seek/repository/device/audio_device_repository.dart';

import 'package:hide_and_seek/repository/device/bluetooth_device_repository.dart';
import 'package:hide_and_seek/ui/page/start/start_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<BluetoothDeviceRepository>(
          create: (_) => BluetoothDeviceRepository(),
          dispose: (_, repository) => repository.close(),
        ),
        Provider<AudioDeviceRepository>(
          lazy: false,
          create: (_) => AudioDeviceRepository()..init(),
          dispose: (_, repository) => repository.close(),
        ),
      ],
      child: MaterialApp(
        title: 'Hide and seek',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
        ),
        home: const StartPage(),
      ),
    );
  }
}
