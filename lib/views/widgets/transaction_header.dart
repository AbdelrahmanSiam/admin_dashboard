import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Transcation History" ,style: AppStyles.styleSemiBold20,),
        Spacer(),
        Text("see all",style: AppStyles.styleMedium16.copyWith(color: Color(0XFF4EB7F2),),),
      ],
    );
  }
}