import 'package:admin_dashboard/views/widgets/all_expenses_section.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_section.dart';
import 'package:admin_dashboard/views/widgets/statistics_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesSection(),
                  SizedBox(height: 24),
                  QuickInvoiceSection(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 32),
        Expanded(flex: 2, child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: StatisticsSection(),
        )),
      ],
    );
  }
}
