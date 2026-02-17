import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomMyCardWidget extends StatelessWidget {
  const CustomMyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("My Card" , style: AppStyles.styleSemiBold20,),
      ],
    );
  }
}