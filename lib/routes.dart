import 'package:flutter/material.dart';

import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstScreen());
      case '/home':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondScreen(
              text: args,
            ),
          );
        }
        break;
      case '/third':
        // Validation of correct data type
        if (args is int) {
          return MaterialPageRoute(
            builder: (_) => ThirdScreen(
              text: args,
            ),
          );
        }
        break;
      default:
        return errorRoute();
    }
    return errorRoute();
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

// class OnGenerateRoutes {
//  static Route<dynamic> ongenratesRoutes(RouteSettings setting) {
//     final args = setting.arguments;
//     switch (setting.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => FirstScreen());
//       case '/second':
//         // Validation of correct data type
//         if (args is String) {
//           return MaterialPageRoute(
//             builder: (_) => SecondScreen(
//               text: args,
//             ),
//           );
//         }

//         return errorRoute();
//       default:
//         return errorRoute();
//     }
//   }

//   static Route<dynamic> errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Error'),
//         ),
//         body: Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }
