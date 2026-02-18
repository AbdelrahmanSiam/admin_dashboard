import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/transaction_container.dart';
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
        SizedBox(height: 16),
        TransactionContainer(title: "Cash Withdrawal", subTitle: "13 Apr, 2022 ", salary: r"$20,129",color: Colors.red,),
        SizedBox(height: 10),
        TransactionContainer(title: "Landing Page project", subTitle: "13 Apr, 2022 at 3:30 PM", salary: r"$2,000"),
        SizedBox(height: 10),
        TransactionContainer(title: "Juni Mobile App project", subTitle: "13 Apr, 2022 at 3:30 PM", salary: r"$20,129"),
        SizedBox(height: 10),
      ],
    );
  }
}