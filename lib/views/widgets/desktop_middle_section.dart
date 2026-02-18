import 'package:admin_dashboard/views/widgets/all_expenses_section.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

class DesktopMiddleSection extends StatelessWidget {
  const DesktopMiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesSection(),
          SizedBox(height: 24),
          QuickInvoiceSection(),
        ],
      ),
    );
  }
}
