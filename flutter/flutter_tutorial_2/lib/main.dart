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
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter 2nd Session'),
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
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue, //change background color
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text("Sample Text"),
              /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        print('Pressed');
                      },
                      icon: Icon(Icons.menu)),
                  IconButton(
                    onPressed: () {
                      print('Pressed');
                    },
                    icon: Icon(Icons.shop),
                  )
                ],
              ), */
              /* Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        height: 80,
                        color: Colors.red,
                      )),
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 80,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ), */
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: TextFormField(
                  //TextField
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your email";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email), //suffixIcon for right
                      hintText: 'Please enter your email'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "enter your password";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: 'Please enter your password'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Email is $email & password is $password");
                    }
                  },
                  child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}
