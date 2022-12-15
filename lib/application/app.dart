
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../presentation/resources/route_manger.dart';
import '../presentation/resources/theme_manger.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal(); //privet named constructor

  static const MyApp _instance =
  MyApp._internal(); //singleton or single _instance
  factory MyApp() => _instance; //factory

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
        theme: getApplicationTheme(),
      );
    });
  }
}
