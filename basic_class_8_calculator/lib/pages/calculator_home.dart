import 'package:basic_class_8_calculator/components/row_of_button.dart';
import 'package:basic_class_8_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcularHome extends StatefulWidget {
  const CalcularHome({super.key});

  @override
  State<CalcularHome> createState() => _CalcularHomeState();
}

class _CalcularHomeState extends State<CalcularHome> {
  var userInput = "";
  var answer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userInput,
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      (userInput == '') ? '0' : answer,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  RowOfButton(
                    c1: 'AC',
                    c2: '+/-',
                    c3: 'DEL',
                    c4: '/',
                    colorC1: grey,
                    colorC2: grey,
                    colorC3: grey,
                    colorC4: orange,
                    onPress1: () {
                      userInput = "";
                      answer = "";
                      setState(() {});
                    },
                    onPress2: () {
                      var newUserInput = userInput;
                      if (userInput[0] != '-') {
                        userInput = '-$newUserInput';
                      } else if (userInput[0] != '-') {
                        userInput = userInput.substring(1, userInput.length);
                      }
                      setState(() {});
                    },
                    onPress3: () {
                      userInput = userInput.substring(0, userInput.length - 1);
                      setState(() {});
                    },
                    onPress4: () {
                      userInput += '/';
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RowOfButton(
                    c1: '7',
                    c2: '8',
                    c3: '9',
                    c4: 'x',
                    colorC1: grey,
                    colorC2: grey,
                    colorC3: grey,
                    colorC4: orange,
                    onPress1: () {
                      userInput += '7';
                      setState(() {});
                    },
                    onPress2: () {
                      userInput += '8';
                      setState(() {});
                    },
                    onPress3: () {
                      userInput += '9';
                      setState(() {});
                    },
                    onPress4: () {
                      userInput += '*';
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RowOfButton(
                    c1: '4',
                    c2: '5',
                    c3: '6',
                    c4: '-',
                    colorC1: grey,
                    colorC2: grey,
                    colorC3: grey,
                    colorC4: orange,
                    onPress1: () {
                      userInput += '4';
                      setState(() {});
                    },
                    onPress2: () {
                      userInput += '5';
                      setState(() {});
                    },
                    onPress3: () {
                      userInput += '6';
                      setState(() {});
                    },
                    onPress4: () {
                      userInput += '-';
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RowOfButton(
                    c1: '1',
                    c2: '2',
                    c3: '3',
                    c4: '+',
                    colorC1: grey,
                    colorC2: grey,
                    colorC3: grey,
                    colorC4: orange,
                    onPress1: () {
                      userInput += '1';
                      setState(() {});
                    },
                    onPress2: () {
                      userInput += '2';
                      setState(() {});
                    },
                    onPress3: () {
                      userInput += '3';
                      setState(() {});
                    },
                    onPress4: () {
                      userInput += '+';
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RowOfButton(
                    c1: '00',
                    c2: '0',
                    c3: '.',
                    c4: '=',
                    colorC1: grey,
                    colorC2: grey,
                    colorC3: grey,
                    colorC4: orange,
                    onPress1: () {
                      userInput += '00';
                      setState(() {});
                    },
                    onPress2: () {
                      userInput += '0';
                      setState(() {});
                    },
                    onPress3: () {
                      userInput += '.';
                      setState(() {});
                    },
                    onPress4: () {
                      whenEqualClicked();
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void whenEqualClicked() {
    Parser p = Parser();
    Expression exp = p.parse(userInput);

    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
    //answer = eval.toStringAsFixed(3);
  }
}
