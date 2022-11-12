import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hide_and_seek/bloc/hiding/hiding_bloc.dart';
import 'package:hide_and_seek/bloc/info/info_bloc.dart';
import 'package:hide_and_seek/ui/page/hiding/widgets/hiding_indicator.dart';
import 'package:hide_and_seek/ui/page/info/info_page.dart';
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
      duration: Duration(seconds: 5),
      content: Text(
        'Ошибочка:( Пожалуйста, проверьте, что BT включен, приложение получило все необходимые разрешения и попробуйте переключить режим',
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showInfo() {
    showModalBottomSheet(
      context: context,
      builder: (_) => BlocProvider(
        create: (_) => InfoBloc(
          bluetoothRepository: context.read(),
          audioRepository: context.read(),
        ),
        child: const InfoPage(type: InfoType.hiding),
      ),
    );
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
            actions: [
              IconButton(
                onPressed: _showInfo,
                icon: const Icon(Icons.question_mark),
              ),
            ],
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
