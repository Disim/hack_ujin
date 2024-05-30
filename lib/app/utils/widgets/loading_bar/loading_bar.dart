import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.loading = false});

  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: loading,
      child: Container(
        color: const Color.fromARGB(3, 30, 30, 30),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(26),
            decoration: BoxDecoration(
                color: AppColors.baseWhite,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(color: AppColors.baseDark, blurRadius: 10)
                ]),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
