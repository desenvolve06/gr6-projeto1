// ignore: unused_import
import 'dart:ffi';
import 'dart:math';

import 'package:desenvolvegr6/exercises/exercise_11.dart';
import 'package:desenvolvegr6/exercises/exercise_2.dart';
import 'package:desenvolvegr6/exercises/exercise_8.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'exercises/exercise_14.dart';
import 'exercises/exercise_10.dart';
import 'exercises/exercise_18.dart';
import 'exercises/exercise_3.dart';
import 'exercises/exercise_4.dart';
import 'exercises/exercise_5.dart';
import 'exercises/exercise_6.dart';
import 'exercises/exercise_9.dart';

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

  void _challenge1() {
    setState(() {
      _textChallenge = "Challenge 1";
      int num1 = random.nextInt(10);
      int num2 = random.nextInt(10);
      if (num1 == num2) {
        _result = "The numbers are the same";
      } else {
        String biggerValue = max(num1, num2).toString();
        _result = "The bigger value between $num1 and $num2 is: $biggerValue ";
      }
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
      _result = result.toString();
    });
  }

  void _challenge6() {
    int value = 100;
    setState(() {
      String result = checkpreviousnext(value);
      _textChallenge = 'Challenge 6';
      _result = result.toString();
    });
  }

  void _challenge7() {
    double salarioMinimo = 1412.00;
    double salarioUsuario = 2500.00;

    double salariosMinimos = salarioUsuario / salarioMinimo;
    String result =
        'The user earns ${salariosMinimos.toStringAsFixed(2)} minimum wages.';

    setState(() {
      _textChallenge = 'Challenge 7';
      _result = result;
    });
  }

  void _challenge8() {
    int value1 = random.nextInt(100);
    int value2 = random.nextInt(100);
    int value3 = random.nextInt(100);

    setState(() {
      String result = descendingOrder(value1, value2, value3);
      _textChallenge = 'Challenge 8';
      _result = result;
    });
  }

  void _challenge9() {
    setState(() {
      List<dynamic> result =
          challenge9(); // Chamando a função e recebendo a média e o status
      double media = result[0]; // Obtendo a média da lista retornada
      String status = result[1]; // Obtendo o status da lista retornada
      _textChallenge = 'Challenge 9';
      _result =
          'Média: $media\nStatus: $status'; // Atualizando o valor de _result
    });
  }

  void _challenge10() {
    setState(() {
      List<dynamic> result = challenge10();
      String nome = result[0];
      int idade = result[1];
      String mensagem = result[2];
      _textChallenge = 'Challenge 10';
      _result = '$nome - $mensagem';
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
    List<int> numbers = [1, 2, 3];

    List<int> squares = [];

    for (int number in numbers) {
      squares.add(number * number);
    }

    setState(() {
      _textChallenge = 'Challenge 12';
      _result = squares.toString();
    });
  }

  void _challenge14() {
    List<int> randomNumbers = generateRandomNumbers(10);
    setState(() {
      String result = findMinMax(randomNumbers);
      _textChallenge = 'Challenge 14';
      _result = result.toString();
    });
  }

  void _challenge15() {
    int limit = Random().nextInt(10);
    List<int> numbers = [];
    for (int i = 0; i <= limit; i++) {
      numbers.add(i);
    }
    setState(() {
      _result =
          "The generated limit is ${limit.toString()} and the list is: ${numbers.toString()}";
    });
  }

  void _challenge16(String palavra) {
    List<String> palavraArray = palavra.toLowerCase().split('');
    for (int i = 0; i < palavraArray.length; i++) {
      if (palavraArray[i] == " ") {
        palavraArray.removeAt(i);
      }
    }
    List<String> palavraAoContrario = palavraArray.reversed.toList();

    setState(() {
      _textChallenge = "Challenge 16";
      if (palavraAoContrario.join('') == palavraArray.join('')) {
        _result = "A palavra ou frase $palavra é Palíndromo";
      } else {
        _result = "A palavra ou frase $palavra não é Palíndromo";
      }
    });
  }

  void _challenge18() {
    setState(() {
      List<dynamic> result =
          challenge18(); // Chamando a função e recebendo a palavra, frase e resultado
      String palavra = result[0]; // Obtendo a palavra da lista retornada
      String frase = result[1]; // Obtendo a frase da lista retornada
      int resultado = result[2]; // Obtendo o resultado da lista retornada
      _textChallenge = 'Challenge 18';
      _result =
          'Palavra: $palavra\nFrase: $frase\nOcorrências: $resultado'; // Atualizando o valor de _result
    });
  }

  void _challenge19() {
    List<String> words = [
      'foR',
      'scream',
      'CaRs',
      'poTatos',
      'racs',
      'creams',
      'scar',
      'four'
    ];

    Map<String, List<String>> groups = {};

    for (String word in words) {
      List<String> characters = word.toLowerCase().split('');
      characters.sort();
      String sortedWord = characters.join();

      if (!groups.containsKey(sortedWord)) {
        groups[sortedWord] = [];
      }
      groups[sortedWord]!.add(word);
    }

    List<List<String>> result = groups.values.toList();

    setState(() {
      _textChallenge = 'Challenge 19';
      _result = result.toString();
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
        onPressed: _challenge14,
        tooltip: 'Increment',
        child: const Icon(Icons.screen_share_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
