import 'package:admin_dashboard/views/widgets/custom_my_card_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key, required this.pageController});
 final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => CustomMyCardWidget()),
    );
  }
}
// I want each child(card) calc its height and return it to parent , we can not use builder method in the parent , this case used with fixed number of children => We will use ExpandablePageView package