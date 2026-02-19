import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomMyCardWidget extends StatelessWidget {
  const CustomMyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
          // already width will be responsive because parent is expanded but height must be responsive also so will use AspectRaito
          aspectRatio: 450 / 215,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.assetsImagesCard),
              ),
              color: Color(0XFF4EB7F2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(left: 31, right: 42, top: 16),
                  title: Text(
                    "Name card",
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("Syah Bandi", style: AppStyles.styleMedium20(context)),
                  trailing: SvgPicture.asset(Assets.assetsImagesGallery),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "0918 8124 0042 8129",
                        style: AppStyles.styleSemiBold24(context).copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "12/20 - 124",
                        style: AppStyles.styleRegular16(context).copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        );
  }
}
