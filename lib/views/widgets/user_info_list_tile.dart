import 'package:admin_dashboard/models/user_info_tile_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key, required this.userInfoTileModel,
  });
  final UserInfoTileModel userInfoTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0XFFFAFAFA),
      child: IntrinsicWidth(
        child: ListTile(
          leading: SvgPicture.asset(userInfoTileModel.image,height: 32,width: 32,),
          title: Text(
            userInfoTileModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(userInfoTileModel.subTitle, style: AppStyles.styleRegular12),
        ),
      ),
    );
  }
}
