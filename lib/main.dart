import 'package:flutter/material.dart';
import 'package:smartwallet/core/utils/app_router.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      theme: ThemeData(scaffoldBackgroundColor: scaffoldBackgroundColor),
    );
  }
}
