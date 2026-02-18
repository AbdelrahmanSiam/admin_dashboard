import 'package:admin_dashboard/views/widgets/all_expenses_items.dart';
import 'package:admin_dashboard/views/widgets/custom_header.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpensesSection extends StatefulWidget {
  const AllExpensesSection({super.key});

  @override
  State<AllExpensesSection> createState() => _AllExpensesSectionState();
}

class _AllExpensesSectionState extends State<AllExpensesSection> {
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          CustomHeader(title: "AllExpenses",),
          SizedBox(height: 16),
          AllExpensesItems(),
        ],
      ),
    );
  }
}
