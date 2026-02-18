import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/desktop_middle_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawerSection()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: Padding(
          padding: const EdgeInsets.only(right: 32.0),
          child: DesktopMiddleSection(),
        )),
      ],
    );
  }
}