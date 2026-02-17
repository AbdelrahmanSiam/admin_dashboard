import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.text, required this.hintText});
  final String text , hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text , style: AppStyles.styleMedium16,),
        SizedBox(height: 5,),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0XFFFAFAFA),
            hintText: hintText,
            hintStyle: AppStyles.styleRegular16.copyWith(color: Color(0XFFAAAAAA),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}