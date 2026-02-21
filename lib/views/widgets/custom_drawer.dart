import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/models/user_info_tile_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/drawer_item.dart';
import 'package:admin_dashboard/views/widgets/drawer_items_list_view.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawerSection extends StatelessWidget {
  const CustomDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width *.7,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: CustomScrollView( // we can not use expanded widget inside CustomScrollView directly but we can use it inside SliverFillRemaining
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: FittedBox(child: UserInfoListTile(userInfoTileModel: UserInfoTileModel(title: "Lekan Okeowo", subTitle: "demo@gmail.com", image: Assets.assetsImagesAvatar3)))
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            DrawerItemsListView(), // sliverList does not use SliverToBoxAdapter
            SliverFillRemaining(
              hasScrollBody: false, // all draw scroll from CustomScrollView
              child: Column(
                children: [
                  Expanded(child: SizedBox(height: 20,)),// 20 is the minimum height can be taken 
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Setting System",
                      image: Assets.assetsImagesSettingIcon,
                    ),
                    isActive: false,
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Logout",
                      image: Assets.assetsImagesLogoutIcon,
                    ),
                    isActive: false,
                  ),
                  Flexible(child: SizedBox(height: 48)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
