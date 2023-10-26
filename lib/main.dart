import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
                color: Color.fromARGB(255, 216, 16, 2),
                height: 130,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 200,
                        color: Colors.grey[400],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 20,
                        width: double.infinity,
                        color: Colors.greenAccent,
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            LayoutBuilder(builder: (context, constraints) {
              double width = constraints.maxWidth;
              return Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Stack(children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              color: Colors.transparent,
                            ),
                            Container(
                              height: 100,
                              width: double.infinity,
                              color: Color.fromARGB(255, 216, 16, 2),
                              padding: EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 20,
                                    width: double.infinity,
                                    color: Colors.greenAccent,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: width / 2 - 111,
                          top: -5,
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            color: Colors.grey[400],
                            height: 40,
                            width: 200,
                          ),
                        ),
                      ])
                    ],
                  ));
            })
          ],
        ),
      ),
    );
  }
}
