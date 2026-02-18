import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/transaction_header.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        SizedBox(height: 20),
        Text("13 April 2022" , style: AppStyles.styleMedium16.copyWith(color: Color(0XFFAAAAAA),),),
        SizedBox(height: 12),
        
      ],
    );
  }
}