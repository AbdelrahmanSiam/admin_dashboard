import 'package:admin_dashboard/views/widgets/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 32.0),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCardAndTransactionSection(),
                SizedBox(height: 20,),
                IncomeSection(),
              ],
            ),
      ),
    );
  }
}
