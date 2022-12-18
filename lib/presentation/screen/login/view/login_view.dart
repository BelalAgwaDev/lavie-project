import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lavie/presentation/resources/asset_manger.dart';
import 'package:lavie/presentation/resources/strings_manger.dart';
import 'package:lavie/presentation/screen/login/cubit/login_cubit.dart';


import '../../../../application/di.dart';
import '../widget/images_data.dart';
import '../widget/social_icon_data.dart';
import '../widget/tab_bar_data.dart';

class LoginView extends StatelessWidget {


  const LoginView( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => instance<LoginCubit>() ,
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          final controller=LoginCubit.get(context);
          return Scaffold(
            body: DefaultTabController(
              length: 2,
              initialIndex: 1,
              child: Column(
                children: [
                  const ImagesData(),
                   TabBarData(controller: controller),
                  const Text(AppStrings.continueWith),
                  const SocialIconData(),

                  Align(
                      alignment: AlignmentDirectional.topStart,
                      child: SvgPicture.asset(ImageAsset.loginTree2)),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}






