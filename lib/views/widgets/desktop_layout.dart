import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/desktop_middle_section.dart';
import 'package:admin_dashboard/views/widgets/statistics_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: DesktopMiddleSection(),
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: StatisticsSection(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
