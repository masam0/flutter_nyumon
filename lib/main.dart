import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: const Color(0xFF2196f3)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var _message = 'ok.';
  static final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Name'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  _message,
                  style: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: textInput,
                  controller: _controller,
                  style: const TextStyle(
                      fontSize: 28.0,
                      color: Color(0xffFF0000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
          ],
        )));
  }

  void textInput(String text) {
    setState(() {
      _message = 'you are saying "$text"';
    });
  }
}
