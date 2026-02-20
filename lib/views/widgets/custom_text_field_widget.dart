import 'package:admin_dashboard/models/custom_text_filed_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.customTextFiledModel});
  final CustomTextFiledModel customTextFiledModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(customTextFiledModel.title , style: AppStyles.styleMedium16(context),),
          SizedBox(height: 12,),
          TextField(
            cursorColor: Color(0XFF4EB7F2),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0XFFFAFAFA),
              hintText: customTextFiledModel.hintText,
              hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0XFFAAAAAA),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}