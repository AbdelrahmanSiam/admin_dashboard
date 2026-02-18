import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({super.key, required this.title, required this.subTitle, required this.salary});
  final String title ,subTitle ,salary;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(title,style: AppStyles.styleSemiBold16,),
        subtitle: Text(subTitle,style: AppStyles.styleRegular16,),
        leading: Text(salary,style: AppStyles.styleSemiBold20,),
      ),
    );
  }
}