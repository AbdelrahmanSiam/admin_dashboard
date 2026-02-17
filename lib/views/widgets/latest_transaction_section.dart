import 'package:admin_dashboard/models/user_info_tile_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});
  static const List<UserInfoTileModel> usersList = [
    UserInfoTileModel(
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
      image: Assets.assetsImagesAvatar1,
    ),
    UserInfoTileModel(
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
      image: Assets.assetsImagesAvatar2,
    ),
    UserInfoTileModel(
      title: "Lionel Messi",
      subTitle: "LionelMessi20@gmail",
      image: Assets.assetsImagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Latest Transaction", style: AppStyles.styleMedium16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: usersList
                .map(
                  (e) => IntrinsicHeight(
                    child: UserInfoListTile(userInfoTileModel: e),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
// If fixed items => Row inside SingleChildScrollView , if not fixed => ListView with fixed height equal childrens height
//  solu 1 (when i use horizontal ListView): (this value is same of child ) sum of child heights || sol2 (if horizontal items scrollable but fiexd size we can use Row)
// child:ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: usersList.length,
//             itemBuilder: (context ,index){
//               return Padding(
//                 padding: const EdgeInsets.only(right:8.0),
//                 child: UserInfoListTile(userInfoTileModel: usersList[index]),
//               );
//             },),
