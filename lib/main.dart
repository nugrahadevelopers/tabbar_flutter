import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.computer),
              ),
              Tab(
                icon: Icon(Icons.android),
              ),
            ]),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 2")),
            ],
          ),
        ),
      ),
    );
  }
}
