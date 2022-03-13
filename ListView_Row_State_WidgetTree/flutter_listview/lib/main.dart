import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Text("Flutter ListView"),
          Container(
            height: 300,
            width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomeCard(
                  title: 'First title',
                ),
                CustomeCard(
                  title: 'Second title',
                ),
                CustomeCard(
                  title: 'Third title',
                ),
              ],
            ),
          ),
          CustomeCard(
            title: 'First title',
          ),
          CustomeCard(
            title: 'Second title',
          ),
          CustomeCard(
            title: 'Third title',
          ),
        ],
      ),
    );
  }
}

class CustomeCard extends StatelessWidget {
  final String title;
  CustomeCard({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        height: 200,
        width: 200,
        // width: MediaQuery.of(context).size.width/2,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
