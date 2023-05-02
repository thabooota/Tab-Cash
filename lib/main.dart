import 'package:flutter/material.dart';
import 'app/app.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(
    MyApp(
      routeGenerator: RouteGenerator(),
    ),
  );
}
