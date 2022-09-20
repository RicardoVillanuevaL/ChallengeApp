import 'package:challenge_app/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(children: [
        FlatButton(
            color: Colors.green,
            child: Container(
                width: double.infinity * 0.5,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Pagar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'raleway')),
                    const SizedBox(width: 10),
                    Text('1000 USD',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'raleway'))
                  ],
                )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            onPressed: () {}),
        RaisedButtons(
            color: Colors.green,
            child: Container(
                width: double.infinity * 0.5,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Pagar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'raleway')),
                    SizedBox(width: 10),
                    Text('1000 USD',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'raleway'))
                  ],
                )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            onPressed: () {})
      ])),
    );
  }

  void prueba() {
    print('este si funca aca');
  }
}
