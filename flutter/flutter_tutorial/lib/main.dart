import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove banner
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

//creating widget
//type 'stl'
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  bool changed = false;

  @override
  Widget build(BuildContext context) {
    if (count % 2 == 0) {
      changed = true;
    } else {
      changed = false;
    }
    //return Container(); //show in display
    return Scaffold(
      // creating the structure
      appBar: AppBar(
        title: Text("First session"),
      ),
      body: Center(
        child: Column(
          //adding multiple text
          mainAxisAlignment:
              MainAxisAlignment.center, //text in the center of the page
          children: [
            Text(
              "Welcome to Flutter",
              style: TextStyle(
                fontSize: 32,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text("${changed} Counter value:" + count.toString()),
            ),
            Text(count % 2 == 0 ? "Even" : "Odd")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add), //plus icon
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
      // change position of the button
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
