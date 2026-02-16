import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensesTitle extends StatelessWidget {
  const AllExpensesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("AllExpenses",style: AppStyles.styleSemiBold20,),
        Expanded(child: SizedBox()),
        Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Monthly",style: AppStyles.styleMedium16,),
                Icon(Icons.keyboard_arrow_down,size:24),
              ],
            ),
          ),
        )
      ],
    );
  }
}