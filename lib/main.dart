import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(Button_6_demo());
}

//1.text Button
/*
class Button_6_demo extends StatelessWidget {


  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body:  MyStatelessWidget(),
      ),
    );
  }
}


class MyStatelessWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: (){

              showToast();
            },
            child: const Text('Disabled'),
          ),


          const SizedBox(height: 50),


          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              showToast();
            },
            child: const Text('Enabled'),
          ),


          const SizedBox(height: 30),

          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: ()
                  {showToast()
                  ;},
                  child: const Text('Gradient'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



  void showToast() {
    Fluttertoast.showToast(
      msg: "Hello i am button",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER_RIGHT,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
*/


//2.elevated Button
/*
class Button_6_demo extends StatelessWidget {
  const Button_6_demo({Key? key}) : super(key: key);


  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));


    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: style,
            onPressed: () {showToast();},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
*/
void showToast() {
  Fluttertoast.showToast(
    msg: "Hello i am button",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER_RIGHT,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

//3.Outline Button
/*
class Button_6_demo extends StatelessWidget {
  const Button_6_demo({Key? key}) : super(key: key);


  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}


class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Received click');
        showToast();
      },
      child: const Text('Click Me'),
    );
  }
}
*/

//4.Icon Button
/*
class Button_6_demo extends StatelessWidget {
  const Button_6_demo({Key? key}) : super(key: key);


  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}


double _volume = 0.0;


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
              _volume += 10;
            });
          },
        ),
        Text('Volume : $_volume')
      ],
    );
  }
}
*/

//5.Dropdown Button
class Button_6_demo extends StatelessWidget {
  const Button_6_demo({Key? key}) : super(key: key);


  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';


  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//6.FloatingAction Button