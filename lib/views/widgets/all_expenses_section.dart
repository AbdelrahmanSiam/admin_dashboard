import 'package:admin_dashboard/views/widgets/all_expenses_items.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_title.dart';
import 'package:flutter/material.dart';

class AllExpensesSection extends StatefulWidget {
  const AllExpensesSection({super.key});

  @override
  State<AllExpensesSection> createState() => _AllExpensesSectionState();
}

class _AllExpensesSectionState extends State<AllExpensesSection> {
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
