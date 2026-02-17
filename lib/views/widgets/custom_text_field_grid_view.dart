import 'package:admin_dashboard/models/custom_text_filed_model.dart';
import 'package:admin_dashboard/views/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';

class CustomTextFieldGridView extends StatelessWidget {
  const CustomTextFieldGridView({super.key});
  static const List<CustomTextFiledModel> list = [
    CustomTextFiledModel(
      title: "Customer name",
      hintText: "Type customer name",
    ),
    CustomTextFiledModel(
      title: "Customer Email",
      hintText: "Type customer email",
    ),
    CustomTextFiledModel(title: "Item name", hintText: "Type customer name"),
    CustomTextFiledModel(title: "Item mount", hintText: "USD"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        // one child height 92
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomTextFieldWidget(customTextFiledModel: list[index]),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
