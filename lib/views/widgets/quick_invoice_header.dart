import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Quick Invoice", style: AppStyles.styleSemiBold20),
        Spacer(),
        SizedBox(
          height: 48,
          width: 48,
          child: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Color(0XFFFAFAFA),
            onPressed: () {},
            child: Icon(Icons.add, color: Color(0XFF4EB7F2),size: 18,),
          ),
        ),
      ],
    );
  }
}
