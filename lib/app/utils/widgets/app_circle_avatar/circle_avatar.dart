import 'package:flutter/material.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({super.key, this.avatar, this.radius});

  final String? avatar;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: avatar != null ? NetworkImage(avatar!) : null,
      child: avatar != null
          ? null
          : Icon(
              Icons.person,
              size: radius,
            ),
    );
  }
}
