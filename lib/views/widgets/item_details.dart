import 'package:admin_dashboard/models/item_details_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key, required this.itemDetailsModel,
  });
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(height: 8, width: 8, color: itemDetailsModel.color),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16.copyWith(color: Color(0XFF064061)),
      ),
      trailing: Text(
        itemDetailsModel.percentage,
        style: AppStyles.styleMedium16.copyWith(color: Color(0XFF208CC8)),
      ),
    );
  }
}
