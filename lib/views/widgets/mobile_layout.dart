import 'package:admin_dashboard/views/widgets/desktop_middle_section.dart';
import 'package:admin_dashboard/views/widgets/statistics_section.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DesktopMiddleSection(),
          StatisticsSection(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
