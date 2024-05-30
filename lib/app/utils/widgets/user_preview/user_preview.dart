import 'package:flutter/material.dart';

import '../../../core/themes/app_text_theme.dart';
import '../app_circle_avatar/circle_avatar.dart';

class UserPreview extends StatelessWidget {
  const UserPreview({super.key, required this.avatar, required this.fullname});

  final String? avatar;
  final String fullname;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppCircleAvatar(radius: 40),
        const SizedBox(
          height: 12,
        ),
        Text(
          fullname,
          style: AppTextStyles.headline.baseDarkBlueColor,
        ),
      ],
    );
  }
}
