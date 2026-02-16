import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            UserInfoListTile(
              image: Assets.assetsImagesAvatar3,
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com",
            ),
            SizedBox(height: 8),
            DrawerItemsListView(),
          ],
        ),
      ),
    );
  }
}

