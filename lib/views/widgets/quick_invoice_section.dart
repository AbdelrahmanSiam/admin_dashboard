import 'package:admin_dashboard/views/widgets/buttons_row.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/custom_text_field_items.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:admin_dashboard/views/widgets/latest_transaction_section.dart';
import 'package:flutter/material.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 16),
          LatestTransactionSection(),
          Divider(height: 48 , color: Color(0XFFF1F1F1),), // gives 24 from top and 24 from bottomFF
          CustomTextFieldItems(),
          SizedBox(height: 16),
          ButtonsRow(),
        ],
      ),
    );
  }
}

