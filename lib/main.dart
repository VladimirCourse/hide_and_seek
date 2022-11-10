import 'package:flutter/material.dart';
import 'package:hide_and_seek/repository/ble/ble_repository.dart';
import 'package:hide_and_seek/repository/ble/ble_repository_impl.dart';
import 'package:hide_and_seek/ui/page/start/start_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hide and seek',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF000000,
          <int, Color>{
            50: Color(0xFF000000),
            100: Color(0xFF000000),
            200: Color(0xFF000000),
            300: Color(0xFF000000),
            400: Color(0xFF000000),
            500: Color(0xFF000000),
            600: Color(0xFF000000),
            700: Color(0xFF000000),
            800: Color(0xFF000000),
            900: Color(0xFF000000),
          },
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: MultiProvider(
        providers: [
          Provider<BLERepository>(
            create: (_) => BLERepositoryImpl(),
            dispose: (_, repository) => repository.close(),
          ),
        ],
        child: const StartPage(),
      ),
    );
  }
}
