import 'package:flutter/material.dart';

import '../app_button/app_button.dart';

enum ButtonStatus {
  init,
  record,
  pause,
  play,
}

class ExerciseButton extends StatelessWidget {
  const ExerciseButton({
    super.key,
    required this.exerciseStatusWaiting,
    required this.exerciseStatusStarted,
    required this.startRecording,
    required this.stopRecording,
    required this.deleteRecord,
    required this.recordedPlayerPausing,
    required this.playRecord,
    required this.stopRecord,
  });

  final ButtonStatus buttonStatus = ButtonStatus.init;
  final Function exerciseStatusWaiting;
  final Function exerciseStatusStarted;
  final Function startRecording;
  final Function stopRecording;
  final Function deleteRecord;
  final Function recordedPlayerPausing;
  final Function playRecord;
  final Function stopRecord;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: exerciseStatusWaiting()
          ? AppButton(
              onPressed: () async => await startRecording(),
              text: 'Начать запись',
            )
          : exerciseStatusStarted()
              ? AppButton(
                  onPressed: () async => await stopRecording(),
                  text: 'Остановить запись',
                )
              : Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        deleteRecord();
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    recordedPlayerPausing()
                        ? Flexible(
                            child: AppButton(
                              onPressed: () async => await playRecord(),
                              prefixIcon: const Icon(Icons.play_arrow),
                            ),
                          )
                        : Flexible(
                            child: AppButton(
                              onPressed: () async => await stopRecord(),
                              prefixIcon: const Icon(Icons.pause),
                            ),
                          ),
                  ],
                ),
    );
  }
}
