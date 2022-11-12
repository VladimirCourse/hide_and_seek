import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_and_seek/bloc/hiding/hiding_bloc.dart';
import 'package:hide_and_seek/bloc/locator/locator_bloc.dart';
import 'package:hide_and_seek/ui/page/hiding/hiding_page.dart';
import 'package:hide_and_seek/ui/page/locator/locator_page.dart';
import 'package:hide_and_seek/ui/page/start/widgets/start_button.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';
import 'package:permission_handler/permission_handler.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  Future<void> _openLocatorPage(BuildContext context) async {
    await [
      Permission.bluetooth,
      Permission.microphone,
      Permission.location,
    ].request();

    await Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => BlocProvider(
          create: (_) => LocatorBloc(
            bluetoothRepository: context.read(),
            audioRepository: context.read(),
          ),
          child: const LocatorPage(),
        ),
      ),
    );
  }

  Future<void> _openHidingPage(BuildContext context) async {
    await [
      Permission.bluetooth,
      Permission.bluetoothAdvertise,
      Permission.location,
    ].request();

    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) => BlocProvider(
          create: (_) => HidingBloc(
            bluetoothRepository: context.read(),
            audioRepository: context.read(),
          ),
          child: const HidingPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppColors.pageGradient),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StartButton(
                  text: 'Я ищу',
                  color: AppColors.radar,
                  icon: const Icon(
                    Icons.search,
                    size: 50,
                    color: Colors.white,
                  ),
                  onPressed: () => _openLocatorPage(context),
                ),
                const SizedBox(height: 20),
                StartButton(
                  text: 'Я прячусь',
                  color: AppColors.hiding,
                  icon: const Icon(
                    Icons.forest,
                    size: 50,
                    color: Colors.white,
                  ),
                  onPressed: () => _openHidingPage(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
