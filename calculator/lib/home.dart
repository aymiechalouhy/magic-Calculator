// use result

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String expression = "";
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(251, 253, 250, 250),
        body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 245),
                  child: Text(expression,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10, bottom: 20),
                //   child: Text(result,
                //       style: const TextStyle(
                //         color: Colors.black54,
                //         fontSize: 30,
                //         fontWeight: FontWeight.w300,
                //       )),
                // ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  blocks("C", Colors.blue),
                  blocks("÷", Colors.blue),
                  blocks("×", Colors.blue),
                  blocks("⌫", Colors.blue)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  blocks("7"),
                  blocks("8"),
                  blocks("9"),
                  blocks("-", Colors.blue)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  blocks("4"),
                  blocks("5"),
                  blocks("6"),
                  blocks("+", Colors.blue)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  blocks("1"),
                  blocks("2"),
                  blocks("3"),
                  blocks("(", Colors.blue)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  blocks("%"),
                  blocks("0"),
                  blocks("."),
                  blocks("=", Colors.blue)
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }

  Widget blocks(String text, [Color? color]) {
    return GestureDetector(
      onTap: () {
        if (text == "C") {
          setState(() {
            expression = "";
            result = "0";
          });
        } else if (text == "⌫") {
          if (expression.isNotEmpty) {
            setState(() {
              expression = expression.substring(0, expression.length - 1);
            });
          }
        } else if (text == "=") {
          expression = expression;
          expression = expression.replaceAll('×', '*');
          expression = expression.replaceAll('÷', '/');
          try {
            Parser p = Parser();
            Expression exp = p.parse(expression);
            ContextModel cm = ContextModel();
            text = ' = ${exp.evaluate(EvaluationType.REAL, cm)}';
          } catch (e) {
            text = "Error";
          }
        } else {
          setState(() {
            expression = expression + text;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 14, left: 8, right: 8),
        child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: color ?? Colors.black,
                  fontSize: 30,
                ),
              ),
            )),
      ),
    );
  }
}
