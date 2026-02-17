import 'package:admin_dashboard/views/widgets/custom_my_card_widget.dart';
import 'package:flutter/material.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      itemBuilder: (context , index){
      return CustomMyCardWidget();
    });
  }
}