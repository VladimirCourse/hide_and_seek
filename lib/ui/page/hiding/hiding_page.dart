import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_and_seek/bloc/hiding/hiding_bloc.dart';
import 'package:hide_and_seek/bloc/locator/locator_bloc.dart';
import 'package:hide_and_seek/ui/page/hiding/widgets/hiding_indicator.dart';
import 'package:hide_and_seek/ui/util/app_colors.dart';

class HidingPage extends StatefulWidget {
  const HidingPage({super.key});

  @override
  State<HidingPage> createState() => _HidingPageState();
}

class _HidingPageState extends State<HidingPage> {
  @override
  void initState() {
    super.initState();

    _sendBluetooth();
  }

  void _sendAudio() {
    context.read<HidingBloc>().add(HidingEvent.sendAudio(onError: _showError));
  }

  void _sendBluetooth() {
    context.read<HidingBloc>().add(HidingEvent.sendluetooth(onError: _showError));
  }

  void _showError() {
    const snackBar = SnackBar(
      content: Text(
        'Ошибочка:( Пожалуйста, проверьте, что BT включен, приложение получило все необходимые разрешения и попробуйте снова',
      ),
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
            title: const Text('Сигнал'),
          ),
          body: Center(
            child: BlocBuilder<HidingBloc, HidingState>(
              builder: (_, state) {
                final color = Color(int.tryParse('ff${state.id}', radix: 16) ?? AppColors.radar.value);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HidingIndicator(
                      isOn: state.isSending,
                      color: color,
                      child: Transform.scale(
                        scale: 2.0,
                        child: CupertinoSwitch(
                          value: state.singalType == SingalType.audio,
                          activeColor: color,
                          trackColor: color,
                          onChanged: (value) => value ? _sendAudio() : _sendBluetooth(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 34),
                    Text(
                      state.singalType == SingalType.audio ? 'Громкий режим' : 'Тихий режим',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
