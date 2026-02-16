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
          SizedBox(height: 112,),
          Container(
            decoration: BoxDecoration(
              color: Color(0XFFFAFAFA),
              borderRadius: BorderRadius.circular(12),
            ),
            child: UserInfoListTile(image: Assets.assetsImagesAvatar1,title: "Lekan Okeowo",subTitle: "demo@gmail.com",),
          )
        ],
      ),
    );
  }
}

