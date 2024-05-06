import 'package:flutter/material.dart';
import 'package:my_tshirt/theme.dart';

class StyledButton extends StatelessWidget {
  StyledButton({
    super.key,
    this.color,
    required this.onPressed,
    required this.child,
  });

  final Function() onPressed;
  final Widget child;

  Color? color = AppColors.primaryColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 17),
        decoration: BoxDecoration(
          color: color ?? AppColors.primaryColor,
        ),
        child: child,
      ),
    );
  }
}
