import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/values_manger.dart';

class TextFormFieldData extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

  const TextFormFieldData({
    required this.controller,
    required this.textInputType,
    required this.text,
    required this.textInputAction,

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(alignment: AlignmentDirectional.topStart, child: Text(text)),
        SizedBox(
          height: AppPadding.p1.h,
        ),
        TextFormField(
          textInputAction: textInputAction,
          keyboardType: textInputType,
          controller: controller,
       ),

      ],
    );
  }
}