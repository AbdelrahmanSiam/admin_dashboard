import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesCardHeader extends StatelessWidget {
  const AllExpensesCardHeader({
    super.key,
    required this.isActive,
    required this.image,
  });

  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isActive ? Colors.white.withOpacity(0.1) : Color(0XFFFAFAFA),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SvgPicture.asset(image),
          ),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: isActive ? Colors.white : Colors.black,
          size: 24,
        ),
      ],
    );
  }
}
