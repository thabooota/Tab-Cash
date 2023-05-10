import 'package:flutter/material.dart';
import '../core/utils/app_router.dart';
import '../core/utils/app_theme.dart';

class TapCash extends StatelessWidget {
  final RouteGenerator routeGenerator;

  const TapCash({
    Key? key,
    required this.routeGenerator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      // theme: appTheme,
      darkTheme: appTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
