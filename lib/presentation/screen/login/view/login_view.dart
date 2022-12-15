import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lavie/presentation/resources/asset_manger.dart';
import 'package:lavie/presentation/resources/strings_manger.dart';
import 'package:sizer/sizer.dart';

import '../widget/images_data.dart';
import '../widget/social_icon_data.dart';
import '../widget/tab_bar_data.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Column(
          children: [
            const ImagesData(),
            const TabBarData(),
            const Text(AppStrings.continueWith),
            const SocialIconData(),
            // const Spacer(),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: SvgPicture.asset(ImageAsset.loginTree2)),
            // SizedBox(height: 1.h)
          ],
        ),
      ),
    );
  }
}






