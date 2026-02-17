import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.isActive});
  final String text;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: 266,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), 
          ),
          backgroundColor: isActive ? Color(0XFF4EB7F2) : Colors.white,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: isActive
              ? AppStyles.styleSemiBold18.copyWith(color: Colors.white)
              : AppStyles.styleSemiBold18,
        ),
      ),
    );
  }
}
