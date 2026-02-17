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
        AspectRatio(// already width will be responsive because parent is expanded but height must be responsive also so will use AspectRaito
          aspectRatio: 450/215,
          child: Container( 
            decoration: BoxDecoration(
              color: Color(0XFF4EB7F2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(Assets.assetsImagesCard1),
          ),
        ),
      ],
    );
  }
}
