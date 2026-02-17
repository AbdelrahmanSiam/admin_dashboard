import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomMyCardWidget extends StatelessWidget {
  const CustomMyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Card", style: AppStyles.styleSemiBold20),
        SizedBox(height: 20),
        SvgPicture.asset(Assets.assetsImagesCard1, color: Color(0XFF4EB7F2)),
      ],
    );
  }
}
