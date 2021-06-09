import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PLACE HOLDER"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: 200,
                child: Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 100,
                )
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Placeholder(
                      color:Colors.blueGrey,
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Placeholder(
                      color:Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
