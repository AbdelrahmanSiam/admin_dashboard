import 'package:admin_dashboard/models/custom_text_filed_model.dart';
import 'package:admin_dashboard/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class CustomTextFieldItems extends StatelessWidget {
  const CustomTextFieldItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFieldWidget(
                customTextFiledModel: CustomTextFiledModel(
                  title: "Customer name",
                  hintText: "Type customer name",
                ),
              ),
            ),
            Expanded(
              child: CustomTextFieldWidget(
                customTextFiledModel: CustomTextFiledModel(
                  title: "Customer Email",
                  hintText: "Type customer email",
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
              child: CustomTextFieldWidget(
                customTextFiledModel: CustomTextFiledModel(
                  title: "Item name",
                  hintText: "Type customer name",
                ),
              ),
            ),
            Expanded(
              child: CustomTextFieldWidget(
                customTextFiledModel: CustomTextFiledModel(
                  title: "Item mount",
                  hintText: "USD",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
