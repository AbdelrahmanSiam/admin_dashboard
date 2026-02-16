import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAllExpensesCard extends StatelessWidget {
  const CustomAllExpensesCard({
    super.key,
    required this.image,
    required this.title,
    required this.isActive,
  });
  final String image, title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: isActive ? Color(0XFF4EB7F2) : Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 16,
            right: 16,
            left: 16,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: isActive ? Colors.white : Color(0XFFFAFAFA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset(Assets.assetsImagesBalanceIcon),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.arrow_back,
                    color: isActive ? Colors.white : Colors.black,
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Text(
                title,
                style: isActive
                    ? AppStyles.styleSemiBold16.copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold16,
              ),
              SizedBox(height: 12),
              Text("April 2022", style: AppStyles.styleRegular12),
              SizedBox(height: 24),
              Text(
                "20,129",
                style: isActive
                    ? AppStyles.styleSemiBold24.copyWith(color: Colors.white)
                    : AppStyles.styleSemiBold24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
