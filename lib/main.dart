import 'dart:math';

import 'package:desenvolvegr6/exercises/exercise_11.dart';
import 'package:desenvolvegr6/exercises/exercise_2.dart';
import 'package:desenvolvegr6/exercises/exercise_5.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'exercises/exercise_3.dart';
import 'exercises/exercise_4.dart';
import 'exercises/exercise_5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
// This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: const MyHomePage(title: 'Desenvolve 6'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _result = 'Result';
  String _textChallenge = '';
  int _counter = 0;
  Random random = Random();

  void _incrementCounter() {
    setState(() {
      _counter++;
      _result = _counter.toString();
    });
  }

  void _challenge2() {
    int a = random.nextInt(10);
    int b = random.nextInt(10);
    int c = random.nextInt(10);
    setState(() {
      String result = checkSum(a, b, c);
      _textChallenge = 'Challenge 2';
      _result = result;
    });
  }

  void _challenge3() {
    int number = random.nextInt(10);
    setState(() {
      String result = calculateFactorial(number);
      _textChallenge = 'Challenge 3';
      _result = result.toString();
    });
  }

  void _challenge4() {
    int minNumber = -100;
    int maxNumber = 100;
    setState(() {
      String result = checknumber(minNumber, maxNumber);
      _textChallenge = 'Challenge 4';
      _result = result.toString();
    });
  }

  void _challenge5() {
    int numberA = 5;
    int numberB = 5;
    int randomNumberA = random.nextInt(numberA);
    int randomNumberB = random.nextInt(numberB);
    setState(() {
      String result = checkTwoNumbers(randomNumberA, randomNumberB);
      _textChallenge = 'Challenge 5';
      result = result.toString();
    });
  }

  void _challenge11() {
    int numero = random.nextInt(10);
    setState(() {
      String result = showMultiplicationTable(numero);
      _textChallenge = 'Challenge 11';
      _result = result.toString();
    });
  }

  void _challenge12() {
    List<int> numeros = [1, 2, 3];

    List<int> quadrados = [];

    for (int numero in numeros) {
      quadrados.add(numero * numero);
    }

    setState(() {
      _textChallenge = 'Challenge 12';
      _result = quadrados.toString();
    });
  }

  Color darkGreenColor = const Color(0xFF006400);
  @override
  Widget build(BuildContext context) {
// This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
// TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: darkGreenColor,
// Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
// Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
// Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              _textChallenge,
            ),
            Text(
              _result,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 30, 255, 0),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _challenge12,
        tooltip: 'Increment',
        child: const Icon(Icons.screen_share_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
