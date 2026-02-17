import 'package:admin_dashboard/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(text: "Add more details", isActive: false),
        Spacer(),
        CustomButton(text: "send Money", isActive: true),
      ],
    );
  }
}
