import 'package:admin_dashboard/models/user_info_tile_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class QuickInvoiceItems extends StatelessWidget {
  const QuickInvoiceItems({super.key});
  static const List<UserInfoTileModel>usersList =[
    UserInfoTileModel(title: "Madrani Andi", subTitle: "Madraniadi20@gmail", image: Assets.assetsImagesAvatar1),
    UserInfoTileModel(title: "Josua Nunito", subTitle: "Josh Nunito@gmail.com", image: Assets.assetsImagesAvatar2),
    UserInfoTileModel(title: "Lionel Messi", subTitle: "LionelMessi20@gmail", image: Assets.assetsImagesAvatar1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context ,index){
          return UserInfoListTile(userInfoTileModel: usersList[index]);
        }),
    );
  }
}