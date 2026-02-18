import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.title, required this.percentage, required this.color});
  final String title ,percentage ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(height: 8,width: 8,color: color,),
      title: Text(title ,style: AppStyles.styleRegular16,),
      trailing: Text(percentage,style: AppStyles.styleMedium16,),
    );
  }
}