import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../../resources/asset_manger.dart';
import '../../../resources/values_manger.dart';

class ImagesData extends StatelessWidget {
  const ImagesData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: AlignmentDirectional.topEnd,
            child: SvgPicture.asset(ImageAsset.loginTree1)),


        Align(
            alignment: AlignmentDirectional.center,
            child: SvgPicture.asset(ImageAsset.splashLogo)),
        SizedBox(
          height: AppPadding.p1.h,
        ),
      ],
    );
  }
}