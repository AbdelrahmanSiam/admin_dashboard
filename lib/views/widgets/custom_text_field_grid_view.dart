import 'package:admin_dashboard/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class CustomTextFeildGridView extends StatelessWidget {
  const CustomTextFeildGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder( // one child height 92
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomTextFieldWidget(
              text: "text",
              hintText: "hintText",
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
