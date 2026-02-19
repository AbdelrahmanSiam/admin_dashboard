import 'package:admin_dashboard/models/all_expenses_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/all_expenses_card_header.dart';
import 'package:flutter/material.dart';

class CustomAllExpensesCard extends StatelessWidget {
  const CustomAllExpensesCard({
    super.key,
    required this.isActive,
    required this.allExpensesModel,
  });
  final AllExpensesModel allExpensesModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isActive ? Color(0XFF4EB7F2) : Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            AllExpensesCardHeader(isActive: isActive, image: allExpensesModel.image),
            SizedBox(height: 34),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allExpensesModel.title,
                style: isActive
                    ? AppStyles.styleSemiBold16.copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold16,
              ),
            ),
            SizedBox(height: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "April 2022",
                style: isActive
                    ? AppStyles.styleRegular12.copyWith(color: Colors.white)
                    : AppStyles.styleRegular12,
              ),
            ),
            SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                r"$20,129",
                style: isActive
                    ? AppStyles.styleSemiBold24.copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

