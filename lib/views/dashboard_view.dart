import 'package:admin_dashboard/views/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/views/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
