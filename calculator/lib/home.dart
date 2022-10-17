import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String tt = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(251, 253, 250, 250),
        body: Column( mainAxisAlignment: MainAxisAlignment.end, 
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  child: Text(tt,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(
                  height: 180,
                ),
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
          )
        ]),
      ),
    );
  }

  Widget blocks(String text, [Color? color]) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tt = tt + text;
        });
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
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
