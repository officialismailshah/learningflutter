import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.close),
            centerTitle: true,
            actions: [
              Icon(
                Icons.search,
                color: Colors.amber,
              ),
              Icon(Icons.more_vert),
            ],
            title: Text(
              'My First demo App',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Text('1nd Container'),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Text('2rd Container'),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Text('3rd Container'),
                )
              ],
            ),
          )),
    );
  }
}
