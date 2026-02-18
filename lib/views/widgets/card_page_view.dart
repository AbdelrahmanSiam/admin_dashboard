import 'package:admin_dashboard/views/widgets/custom_my_card_widget.dart';
import 'package:flutter/material.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context , index){
      return CustomMyCardWidget();
    },);
  }
}
// I want each child(card) calc its height and return it to parent , we can not use builder method in the parent , this case used with fixed number of children => We will use ExpandablePageView package