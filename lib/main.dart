import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.cyan,
                      ),
                      Positioned(
                        right: 10,
                        left: 10,
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.cyanAccent,
                        ),
                      ),
                      Positioned(
                        right: 50,
                        left: 10,
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    splashColor: Colors.red,
                    icon: Icon(Icons.add_circle_outline),
                    color: Colors.amber,
                    iconSize: 100,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 20,
                        primary: Colors.amber,
                      ),
                      onPressed: () {},
                      child: Text('Checking Button')),
                  Container(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              stops: [0.3, 0.5, 0.9],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.blue, Colors.red, Colors.pink],
                            ),
                          ),
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Center(child: Text('1nd Container row')),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.amber,
                          child: Text('1nd Container'),
                        ),
                      ],
                    ),
                  ),
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
                  GestureDetector(
                    onTap: () {
                      print("${controller.text}");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                      height: 200,
                      width: 200,
                      child: Center(child: Text('3rd Container')),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 50,
                          height: 50,
                          child: Text('data'),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                      // keyboardType: TextInputType.,
                      decoration: InputDecoration(
                          prefix: Icon(Icons.ac_unit),
                          suffix: Icon(Icons.access_alarm),
                          hintText: 'Checking',
                          fillColor: Colors.yellow,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
