import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card & Parsing'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              iconShape: Icons.home,
              textIcon: 'Home',
              iconColor: Colors.cyan,
            ),
            MyCard(
              iconShape: Icons.favorite,
              textIcon: 'Favorite',
              iconColor: Colors.red,
            ),
            MyCard(
              iconShape: Icons.place,
              textIcon: 'Place',
              iconColor: Colors.orange,
            ),
            MyCard(
              iconShape: Icons.settings,
              textIcon: 'Settings',
              iconColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final IconData iconShape;
  final String textIcon;
  final Color iconColor;

  MyCard({this.iconShape, this.textIcon, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(
              iconShape,
              size: 50.0,
              color: iconColor,
            ),
            Text(
              textIcon,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
