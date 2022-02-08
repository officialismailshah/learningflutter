// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import 'main.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    FirstScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FirstScreen());
    },
    SecondScreen.name: (routeData) {
      final args = routeData.argsAs<SecondScreenArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.SecondScreen(key: args.key, text: args.text));
    },
    ThirdScreen.name: (routeData) {
      final args = routeData.argsAs<ThirdScreenArgs>(
          orElse: () => const ThirdScreenArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ThirdScreen(key: args.key, text: args.text));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(FirstScreen.name, path: '/'),
        _i2.RouteConfig(SecondScreen.name, path: '/second-screen'),
        _i2.RouteConfig(ThirdScreen.name, path: '/third-screen')
      ];
}

/// generated route for
/// [_i1.FirstScreen]
class FirstScreen extends _i2.PageRouteInfo<void> {
  const FirstScreen() : super(FirstScreen.name, path: '/');

  static const String name = 'FirstScreen';
}

/// generated route for
/// [_i1.SecondScreen]
class SecondScreen extends _i2.PageRouteInfo<SecondScreenArgs> {
  SecondScreen({_i3.Key? key, required String text})
      : super(SecondScreen.name,
            path: '/second-screen',
            args: SecondScreenArgs(key: key, text: text));

  static const String name = 'SecondScreen';
}

class SecondScreenArgs {
  const SecondScreenArgs({this.key, required this.text});

  final _i3.Key? key;

  final String text;

  @override
  String toString() {
    return 'SecondScreenArgs{key: $key, text: $text}';
  }
}

/// generated route for
/// [_i1.ThirdScreen]
class ThirdScreen extends _i2.PageRouteInfo<ThirdScreenArgs> {
  ThirdScreen({_i3.Key? key, int? text})
      : super(ThirdScreen.name,
            path: '/third-screen', args: ThirdScreenArgs(key: key, text: text));

  static const String name = 'ThirdScreen';
}

class ThirdScreenArgs {
  const ThirdScreenArgs({this.key, this.text});

  final _i3.Key? key;

  final int? text;

  @override
  String toString() {
    return 'ThirdScreenArgs{key: $key, text: $text}';
  }
}
