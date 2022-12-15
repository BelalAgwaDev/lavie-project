import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lavie/presentation/resources/asset_manger.dart';

import '../../../resources/constant_manger.dart';
import '../../../resources/route_manger.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}



class _SplashViewState extends State<SplashView> {

  //instance
  Timer? _timer;


  _startDelay() {
    _timer = Timer( const Duration(seconds: AppConstant.splashDelay), _goNext);
  }

  _goNext()async {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);

  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: ElasticIn(child: SvgPicture.asset(ImageAsset.splashLogo))),
    );
  }



  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }



}
