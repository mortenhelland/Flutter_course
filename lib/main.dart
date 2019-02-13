import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Card(child: Column(children: <Widget>[
        Image.asset('assets/food.jpg'),
        Text('Food Paradise')
            ],
          ),
        ),
      ),
    );
  }
}
