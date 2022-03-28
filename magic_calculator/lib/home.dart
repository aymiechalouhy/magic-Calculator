import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 25, 25),
        body: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height /15,
              color: Colors.black,
            ),
            Container(
              height: size.height/1.8,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 41, 40, 40),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
            )
          ]),
        ), 
    );
  }
}