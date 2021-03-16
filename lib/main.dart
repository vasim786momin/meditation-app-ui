import 'package:financial_app_ui/meditation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';
import 'profile.dart';
import 'second_tab.dart';
import 'training_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    SecondTab(),
    Meditation(),
    Profile()

  ];

  void onTapBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTapBar,
        backgroundColor: Colors.white,
        selectedFontSize: 2,
        selectedItemColor: Colors.blue,

        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(''),
          )
        ],
      ),



    );
  }
}


