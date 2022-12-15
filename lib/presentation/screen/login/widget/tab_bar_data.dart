import 'package:flutter/material.dart';
import 'package:lavie/presentation/resources/font_manger.dart';
import 'package:lavie/presentation/resources/values_manger.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/strings_manger.dart';

class TabBarData extends StatelessWidget {
  const TabBarData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: const [
            Tab(
              text: AppStrings.signUp,
            ),
            Tab(
              text: AppStrings.login,
            ),
          ],
          labelStyle: TextStyle(fontSize:FontSize.s15.sp),

          indicatorPadding: EdgeInsets.only(bottom:AppPadding.p0_1.h, left: AppPadding.p15.w, right: AppPadding.p15.w),
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.green,
        ),
        SizedBox(
          height: AppPadding.p45.h,
          width: double.infinity,
          child: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: AppPadding.p20,
                right: AppPadding.p20,
                top: AppPadding.p20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: AppPadding.p42.w,child: const TextFormFieldData(text: "First Name")),
                      SizedBox(width: AppPadding.p5.w,),
                      SizedBox(width: AppPadding.p42_5.w,child: const TextFormFieldData(text: "Last Name")),
                    ],
                  ),
                  SizedBox(
                    height: AppPadding.p1.h,
                  ),
                  const TextFormFieldData(text:AppStrings.email ),
                  SizedBox(
                    height: AppPadding.p1.h,
                  ),
                  const TextFormFieldData(text: AppStrings.password),
                  SizedBox(
                    height: AppPadding.p1.h,
                  ),
                  const TextFormFieldData(text: AppStrings.confirmPassword),
                  SizedBox(
                    height: AppPadding.p2.h,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height:AppPadding.p6.h,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(AppStrings.signUp)))
                ],
              ),
            ),




            Padding(
              padding:  EdgeInsets.only(
                left:AppPadding.p8.w,
                right:AppPadding.p8.w,
                top:AppPadding.p5.h,
              ),
              child: Column(
                children: [

                  SizedBox(
                    height: AppPadding.p3.h,
                  ),
                  const TextFormFieldData(text: AppStrings.email),
                  SizedBox(
                    height: AppPadding.p3.h,
                  ),
                  const TextFormFieldData(text: AppStrings.password),

                  SizedBox(
                    height: AppPadding.p4.h,
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: AppPadding.p6.h,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(AppStrings.signUp)))
                ],
              ),
            ),

          ]),
        ),
      ],
    );
  }
}

class TextFormFieldData extends StatelessWidget {
  final String text;
  const TextFormFieldData({
    required this.text,
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
        TextFormField(),
      ],
    );
  }
}
