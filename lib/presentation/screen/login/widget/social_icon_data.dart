import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/asset_manger.dart';
import '../../../resources/values_manger.dart';

class SocialIconData extends StatelessWidget {
  const SocialIconData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: AppPadding.p38.w,top: AppPadding.p3.h),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(ImageAsset.googleLogo)),
          SizedBox(width: AppPadding.p4.w,),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(ImageAsset.facebookLogo)),
        ],
      ),
    );
  }
}