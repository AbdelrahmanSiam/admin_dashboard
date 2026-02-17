import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          child: Text(
            drawerItemModel.title,
            style: isActive ? AppStyles.styleBold16 : AppStyles.styleMedium16,
          ),
        ),
        trailing: isActive
            ? Container(
                width: 3.72,
                decoration: BoxDecoration(color: Color(0XFF4EB7F2)),
              )
            : SizedBox(),
      ),
    );
  }
}
