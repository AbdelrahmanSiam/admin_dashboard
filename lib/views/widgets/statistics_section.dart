import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/custom_my_card_widget.dart';
import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(padding: 40, child: Column(children: [
      CustomMyCardWidget(),
    ]));
  }
}
