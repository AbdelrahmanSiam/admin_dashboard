import 'package:admin_dashboard/models/item_details_model.dart';
import 'package:admin_dashboard/views/widgets/item_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemDetailsModel> itemsList = [
    ItemDetailsModel(
      title: "Design service",
      percentage: "40%",
      color: Color(0XFF208CC8),
    ),
    ItemDetailsModel(
      title: "Design product",
      percentage: "25%",
      color: Color(0XFF4EB7F2),
    ),
    ItemDetailsModel(
      title: "Product royalti",
      percentage: "20%",
      color: Color(0XFF064061),
    ),
    ItemDetailsModel(
      title: "Other",
      percentage: "22%",
      color: Color(0XFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsModel: itemsList[index]);
      },
    );
  }
}
