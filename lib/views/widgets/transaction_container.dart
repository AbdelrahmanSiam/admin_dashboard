import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({super.key, required this.title, required this.subTitle, required this.salary, this.color = Colors.green});
  final String title ,subTitle ,salary;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(title,style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(subTitle,style: AppStyles.styleRegular16(context).copyWith(color: Color(0XFFAAAAAA)),),
        trailing: Text(salary,style: AppStyles.styleSemiBold20(context).copyWith(color: color),),
      ),
    );
  }
}