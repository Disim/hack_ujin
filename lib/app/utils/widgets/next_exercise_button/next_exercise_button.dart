import 'package:flutter/material.dart';

class NextExerciseButton extends StatelessWidget {
  const NextExerciseButton({
    super.key,
    required this.onPressed,
    required this.onPressedSend,
    required this.isLast,
  });

  final Function onPressed;
  final Function onPressedSend;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return !isLast
        ? IconButton.outlined(
            onPressed: () => onPressedSend(),
            icon: const Icon(
              Icons.check_sharp,
            ),
          )
        : IconButton.outlined(
            onPressed: () => onPressed(),
            icon: const Icon(Icons.chevron_right_rounded),
          );
  }
}
