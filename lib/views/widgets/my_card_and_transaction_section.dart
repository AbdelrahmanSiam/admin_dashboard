import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/card_page_view.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/dots_indicator.dart';
import 'package:admin_dashboard/views/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatefulWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  State<MyCardAndTransactionSection> createState() => _MyCardAndTransactionSectionState();
}

class _MyCardAndTransactionSectionState extends State<MyCardAndTransactionSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: CustomBackgroundContainer(
        padding: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Card", style: AppStyles.styleSemiBold20),
            SizedBox(height: 20),
            CardPageView(pageController: pageController,),
            SizedBox(height: 20),
            DotsIndicator(currentPageIndex: currentPageIndex,),
            Divider(height: 40,color: Color(0XFFF1F1F1),),
            TransactionSection(),
          ],
        ),
      ),
    );
  }
}
