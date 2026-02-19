import 'package:admin_dashboard/models/item_details_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: itemDetailsModel.color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemDetailsModel.title,
          style: AppStyles.styleRegular16(context).copyWith(color: Color(0XFF064061)),
        ),
      ),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemDetailsModel.percentage,
          style: AppStyles.styleMedium16(context).copyWith(color: Color(0XFF208CC8)),
        ),
      ),
    );
  }
}
