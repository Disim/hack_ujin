import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';

// class AppCheckbox extends Checkbox {
//   AppCheckbox({
//     super.key,
//     super.value,
//     super.onChanged,
//   }) : super(

//   );
// }

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({
    super.key,
    this.checkColor,
    required this.value,
    required this.onChanged,
  });

  final Color? checkColor;
  final bool? value;
  final void Function(bool?)? onChanged;

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: AppColors.blue,
      ),
      child: Checkbox(
        checkColor: widget.checkColor,
        value: widget.value,
        onChanged: widget.onChanged,
      ),
    );
  }
}
