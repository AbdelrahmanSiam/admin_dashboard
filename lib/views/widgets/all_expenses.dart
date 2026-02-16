import 'package:admin_dashboard/models/all_expenses_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_title.dart';
import 'package:admin_dashboard/views/widgets/custom_all_expneses_card.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  int selected = 0;
  static const List<AllExpensesModel> allExpensesList = [
    AllExpensesModel(title: "Balance", image: Assets.assetsImagesBalanceIcon),
    AllExpensesModel(title: "Income", image: Assets.assetsImagesIncomeIcon),
    AllExpensesModel(title: "Expenses", image: Assets.assetsImagesExpensesIcon),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AllExpensesTitle()),
          SliverToBoxAdapter(child: SizedBox(height: 24,),),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allExpensesList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (selected != index) {
                        setState(() {
                          selected = index;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CustomAllExpensesCard(
                        isActive: selected == index,
                        allExpensesModel: allExpensesList[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
