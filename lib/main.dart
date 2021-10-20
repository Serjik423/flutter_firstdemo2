import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first flutter project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'demo window'),
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
  int _counter = 0;
  String _img1 = "";

  void _incrementCounter() {
    setState(() {
      _counter++;

      if ((_counter % 2) == 0) {
        _img1 =
            "https://cdn.icon-icons.com/icons2/630/PNG/512/diving-googles_icon-icons.com_57925.png";
      } else {
        _img1 =
            "https://media.istockphoto.com/vectors/snorkel-googles-diving-isolated-icon-vector-id867961994?s=612x612";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'нажми на кнопку DDDD :',
            ),
            /*Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),*/

            Image.network("$_img1", width: 50, height: 50)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        // tooltip: '',
        child: Icon(Icons.add),
      ),
    );
  }
}
