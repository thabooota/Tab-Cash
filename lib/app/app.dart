import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/app_router.dart';
import 'package:smartwallet/core/utils/color_manager.dart';

class MyApp extends StatelessWidget {
  final RouteGenerator routeGenerator;

  const MyApp({
    Key? key,
    required this.routeGenerator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
      ),
    );
  }
}
