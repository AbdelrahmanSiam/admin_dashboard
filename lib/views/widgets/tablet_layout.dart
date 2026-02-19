import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/desktop_middle_section.dart';
import 'package:admin_dashboard/views/widgets/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/statistics_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top:32.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: DesktopMiddleSection(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: StatisticsSection(),
                  ),
                  SizedBox(height: 24,),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
