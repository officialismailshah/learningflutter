// import 'package:auto_route/auto_route.dart';
import 'package:firstday/routes.dart';
import 'package:flutter/material.dart';

// import 'AppRouter.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  // final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // routes: {
      //   '/': (context) => FirstScreen(),
      //   '/home': (context) => SecondScreen(text: 'Hello'),
      // },
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: TextButton(
          style: TextButton.styleFrom(elevation: 10, primary: Colors.amber),
          child: Text('First Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/home', arguments: 'hello');
          },
        )),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text,
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              margin: EdgeInsets.all(10),
              // height: 100,
              color: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('$index'),
                onTap: () {
                  navigateTo(context, index);
                  // Navigator.pushNamed(context, '/third', arguments: index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

navigateTo(BuildContext context, int index) {
  Route route =
      MaterialPageRoute(builder: (context) => ThirdScreen(text: index));
  Navigator.push(context, route);
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key, this.text}) : super(key: key);
  final int? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.pink,
              child: Center(
                child: Column(
                  children: [
                    Text('Third Screen'),
                    Text(
                      text.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Pop Out')),
            Switch(value: false, onChanged: onChanged)
          ],
        ),
      ),
    );
  }
}

onChanged(val) {
  print(val);
}
// class FirstFirstScreen extends StatelessWidget {
//   const FirstFirstScreen({
//     Key? key,
//     required this.controller,
//   }) : super(key: key);

//   final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.close),
//           centerTitle: true,
//           actions: [
//             Icon(
//               Icons.search,
//               color: Colors.amber,
//             ),
//             Icon(Icons.more_vert),
//           ],
//           title: Text(
//             'My First demo App',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         body: Body(controller: controller));
//   }
// }

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//     required this.controller,
//   }) : super(key: key);

//   final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox.expand(
//       child: Stack(
//         children: [
//           Container(
//             color: Colors.blue,
//             width: double.infinity,
//             height: double.infinity,
//             child: Image(
//               fit: BoxFit.contain,
//               image: AssetImage('assets/sim.png'),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       width: 200,
//                       height: 200,
//                       color: Colors.cyan,
//                     ),
//                     Positioned(
//                       right: 10,
//                       left: 10,
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         color: Colors.cyanAccent,
//                       ),
//                     ),
//                     Positioned(
//                       right: 50,
//                       left: 10,
//                       child: Container(
//                         width: 100,
//                         height: 100,
//                         color: Colors.orange,
//                       ),
//                     )
//                   ],
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(
//                         builder: (context) => FirstScreen(),
//                       ),
//                     );
//                   },
//                   splashColor: Colors.red,
//                   icon: Icon(Icons.add_circle_outline),
//                   color: Colors.amber,
//                   iconSize: 100,
//                 ),
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       elevation: 20,
//                       primary: Colors.amber,
//                     ),
//                     onPressed: () {},
//                     child: Text('Checking Button')),
//                 Container(
//                   height: 200,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.amber,
//                           shape: BoxShape.circle,
//                           gradient: LinearGradient(
//                             stops: [0.3, 0.5, 0.9],
//                             begin: Alignment.topRight,
//                             end: Alignment.bottomLeft,
//                             colors: [Colors.blue, Colors.red, Colors.pink],
//                           ),
//                         ),
//                         margin: EdgeInsets.all(10),
//                         padding: EdgeInsets.all(10),
//                         height: 50,
//                         width: 50,
//                         child: Center(child: Text('1nd Container row')),
//                       ),
//                       Container(
//                         height: 50,
//                         width: 50,
//                         color: Colors.amber,
//                         child: Text('1nd Container'),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.amber,
//                   child: Text('1nd Container'),
//                 ),
//                 Container(
//                   height: 200,
//                   width: 200,
//                   color: Colors.amber,
//                   child: Text('2rd Container'),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     print("${controller.text}");
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       shape: BoxShape.circle,
//                     ),
//                     height: 200,
//                     width: 200,
//                     child: Center(child: Text('3rd Container')),
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   width: double.infinity,
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: 10,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         width: 50,
//                         height: 50,
//                         child: Text('data'),
//                       );
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     controller: controller,
//                     // keyboardType: TextInputType.,
//                     decoration: InputDecoration(
//                         prefix: Icon(Icons.ac_unit),
//                         suffix: Icon(Icons.access_alarm),
//                         hintText: 'Checking',
//                         fillColor: Colors.yellow,
//                         filled: true,
//                         border: OutlineInputBorder(
//                             borderSide: BorderSide.none,
//                             borderRadius: BorderRadius.circular(20))),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Next Screen'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.blue,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/second', arguments: 'Hello');
//               },
//               child: Icon(Icons.next_plan))
//         ],
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({Key? key, required this.text}) : super(key: key);
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.red,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: Icon(
//               Icons.abc,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class ThirdScreen extends StatelessWidget {
//   const ThirdScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Third Screen'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.amber,
//           ),
//         ],
//       ),
//     );
//   }
// }
