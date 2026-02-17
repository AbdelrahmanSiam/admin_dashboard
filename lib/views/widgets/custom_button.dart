import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.isActive});
  final String text;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? Color(0XFF4EB7F2) : Colors.white,
        foregroundColor: isActive ? Colors.white : Color(0XFF4EB7F2),
      ),
      onPressed: () {},
      child: Text(text, style: AppStyles.styleSemiBold18),
    );
  }
}
