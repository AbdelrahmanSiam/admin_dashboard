import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 16,),
          Text("Latest Transaction",style: AppStyles.styleMedium16,),
        ],
      ),
    );
  }
}