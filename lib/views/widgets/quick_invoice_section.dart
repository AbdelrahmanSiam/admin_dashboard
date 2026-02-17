import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_items.dart';
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
          SizedBox(height: 16,),
          Text("Latest Transaction",style: AppStyles.styleMedium16,),
          QuickInvoiceItems(),
        ],
      ),
    );
  }
}

