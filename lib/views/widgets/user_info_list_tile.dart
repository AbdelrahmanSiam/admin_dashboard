import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image,height: 32,width: 32,),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16.copyWith(color: Color(0XFF064061)),
      ),
      subtitle: Text(subTitle, style: AppStyles.styleRegular12),
    );
  }
}
