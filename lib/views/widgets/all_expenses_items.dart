import 'package:admin_dashboard/models/all_expenses_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/custom_all_expneses_card.dart';
import 'package:flutter/material.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  int selected = 0;
  static const List<AllExpensesModel> allExpensesList = [
    AllExpensesModel(title: "Balance", image: Assets.assetsImagesBalanceIcon),
    AllExpensesModel(title: "Income", image: Assets.assetsImagesIncomeIcon),
    AllExpensesModel(title: "Expenses", image: Assets.assetsImagesExpensesIcon),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: allExpensesList.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (selected != index) {
                setState(() {
                  selected = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomAllExpensesCard(
                isActive: selected == index,
                allExpensesModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
