import 'package:flutter/material.dart';
import 'package:lavie/presentation/resources/font_manger.dart';
import 'package:lavie/presentation/resources/values_manger.dart';
import 'package:lavie/presentation/screen/login/cubit/login_cubit.dart';
import 'package:lavie/presentation/screen/login/widget/text_form_data.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/strings_manger.dart';

class TabBarData extends StatelessWidget {
 final LoginCubit controller;

  const TabBarData( {
required this.controller,
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
              child: SingleChildScrollView(
                child: Form(
                  key:controller.registerFormKey ,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: AppPadding.p42.w,child:  TextFormFieldData(text: AppStrings.firstName,textInputAction: TextInputAction.next,
                              textInputType: TextInputType.name,controller: controller.firstName )),
                          SizedBox(width: AppPadding.p5.w,),
                          SizedBox(width: AppPadding.p42_5.w,child:  TextFormFieldData(text: AppStrings.lastName,textInputAction: TextInputAction.next,
                              textInputType: TextInputType.name,controller: controller.lastName)),
                        ],
                      ),
                      SizedBox(
                        height: AppPadding.p1.h,
                      ),
                       TextFormFieldData(text: AppStrings.email,textInputAction: TextInputAction.next,
                          textInputType: TextInputType.emailAddress,controller: controller.registerEmail),
                      SizedBox(
                        height: AppPadding.p1.h,
                      ),
                       TextFormFieldData(text: AppStrings.password,textInputAction: TextInputAction.next,
                          textInputType: TextInputType.visiblePassword,controller: controller.registerPassword),
                      SizedBox(
                        height: AppPadding.p1.h,
                      ),
                       TextFormFieldData(text: AppStrings.confirmPassword,textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,controller: controller.registerVisiblePassword),
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
              ),
            ),




            Padding(
              padding:  EdgeInsets.only(
                left:AppPadding.p8.w,
                right:AppPadding.p8.w,
                top:AppPadding.p5.h,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key:controller.loginFormKey ,
                  child: Column(
                    children: [

                      SizedBox(
                        height: AppPadding.p3.h,
                      ),
                       TextFormFieldData(text: AppStrings.email,textInputAction: TextInputAction.next,
                          textInputType: TextInputType.emailAddress,controller: controller.loginEmail),
                      SizedBox(
                        height: AppPadding.p3.h,
                      ),
                       TextFormFieldData(text: AppStrings.password,textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,controller: controller.loginPassword),

                      SizedBox(
                        height: AppPadding.p4.h,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: AppPadding.p6.h,
                          child: ElevatedButton(
                              onPressed: () {
                                controller.login();
                              }, child: const Text(AppStrings.signUp)))
                    ],
                  ),
                ),
              ),
            ),

          ]),
        ),
      ],
    );
  }
}


