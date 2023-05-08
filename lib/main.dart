import 'package:flutter/material.dart';
import 'package:smartwallet/features/profile/presentation/views/profile_screen.dart';
import 'app/app.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(
    TapCash(
      routeGenerator: RouteGenerator(),
    ),
  );
}
