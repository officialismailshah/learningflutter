// import 'package:firstday/main.dart';
// import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firstday/main.dart';
// import 'package:auto_route/annotations.dart';
// import 'package:firstday/main.dart';

// part 'AppRouter.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstScreen, initial: true),
    AutoRoute(page: SecondScreen),
    AutoRoute(page: ThirdScreen),
  ],
)
// extend the generated private router
class $AppRouter {}
