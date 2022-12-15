import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'color_manger.dart';
import 'font_manger.dart';
import 'styles_manger.dart';
import 'values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

//main color
      primaryColor: ColorManger.gradationLightBlue,
      scaffoldBackgroundColor: ColorManger.backGround,
//Button theme
      buttonTheme: ButtonThemeData(
          buttonColor: ColorManger.lightBlue,
          disabledColor: ColorManger.darkBlue,
          splashColor: ColorManger.blue,
          shape: const StadiumBorder()),

//elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
        textStyle: getBoldStyle(
          fontSize: FontSize.s13.sp,
          color: ColorManger.darkBlue,
        ),

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppPadding.p8.sp)),
        fixedSize: Size.fromHeight(AppPadding.p46.sp),
      )),

//appbar theme
      appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManger.backGround,
              statusBarIconBrightness: Brightness.dark),
          centerTitle: true,
          elevation: AppPadding.p0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: AppPadding.p22.sp,
          ),
          titleTextStyle: getMediumStyle(
            fontSize: FontSize.s20.sp,
            color: ColorManger.black,
          ),
          color: ColorManger.backGround),

//text theme

      textTheme: TextTheme(
// using in text on boarding
        titleLarge: getBoldStyle(
          fontSize: FontSize.s16.sp,
          color: ColorManger.black,
        ),
//using in profile page
        headlineSmall: getMediumStyle(
            fontSize: FontSize.s14.sp, color: ColorManger.blackText),

// using in text on boarding
        headlineMedium: getMediumStyle(
          fontSize: FontSize.s14.sp,
          color: ColorManger.black,
        ),

//use in on boarding  button
        titleSmall: getSemiBoldStyle(
          fontSize: FontSize.s12.sp,
          color: ColorManger.black,
        ),

//use in on boarding  button
        headlineLarge: getMediumStyle(
          fontSize: FontSize.s12.sp,
          color: ColorManger.white,
        ),
          //use in on about profile page
        bodyLarge: getMediumStyle(
            fontSize:FontSize.s14.sp,
            color: ColorManger.blackText),
      ),

// input decoration theme ( text form field )
      inputDecorationTheme: InputDecorationTheme(


        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize:
               FontSize.s10.sp
              ,
        ),



        filled: true,
        fillColor: ColorManger.backGround,


        focusedBorder: OutlineInputBorder(

            borderSide: BorderSide(color: ColorManger.lightBlue),
            borderRadius: BorderRadius.circular(

                AppPadding.p8.sp
                    )),
        isDense: true,
        contentPadding:  EdgeInsets.symmetric(vertical:1.5.h, horizontal: 4.w),

        enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.circular(

                AppPadding.p8.sp
                    ),

            borderSide:
                BorderSide(color: ColorManger.black, width: AppPadding.p0_1.w)),


        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppPadding.p8.sp),
            borderSide:
                BorderSide(color: ColorManger.error, width: AppPadding.p0_1.w)),


        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppPadding.p10.sp),
            borderSide:
                BorderSide(color: ColorManger.error, width: AppPadding.p0_1.w)),
      ));
}
