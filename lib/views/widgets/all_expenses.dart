import 'package:admin_dashboard/models/all_expenses_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_items.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_title.dart';
import 'package:admin_dashboard/views/widgets/custom_all_expneses_card.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      child: Column(
        children: [
          AllExpensesTitle(),
          SizedBox(height: 16),
          AllExpensesItems(),
        ],
      ),
    );
  }
}
