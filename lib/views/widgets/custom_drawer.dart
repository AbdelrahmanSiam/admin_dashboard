import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 40),
          Card(
            elevation: 0,
            color: Color(0XFFFAFAFA),
            child: UserInfoListTile(
              image: Assets.assetsImagesAvatar3,
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com",
            ),
          ),
        ],
      ),
    );
  }
}
