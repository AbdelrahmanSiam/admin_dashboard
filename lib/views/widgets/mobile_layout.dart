import 'package:admin_dashboard/views/widgets/desktop_middle_section.dart';
import 'package:admin_dashboard/views/widgets/income_section.dart';
import 'package:admin_dashboard/views/widgets/my_card_and_transaction_section.dart';
import 'package:admin_dashboard/views/widgets/statistics_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    DesktopMiddleSection(),
                    SizedBox(height: 20,),
                    Expanded(
                      child: StatisticsSection(),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
