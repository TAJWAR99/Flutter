import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Intro to Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your decremented number is:',
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image(
            height: 150,
            image: AssetImage("images/undraw_online_message_re_3m5v.png"),
          ),
          SvgPicture.asset(
            "images/undraw_People_search_re_5rre.svg",
            height: 100,
            width: 100,
          ),
          // Text(
          //   '$_counter',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _decrementCounter,
      //   tooltip: 'decrement',
      //   child: Icon(Icons.delete),
      // ),
    );
  }
}
