import 'package:flutter/material.dart';
// import 'package:flutter/src/material/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color.fromARGB(255, 27, 25, 25),
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            height: size.height / 15,
            color: Colors.amber,
          ),
          Container(
            height: size.height / 1.8,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 71, 71, 71),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(children: [
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [blocks("AC", Colors.green), blocks("CC", Colors.green), blocks("%", Colors.green), blocks("/", Colors.red)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [blocks("1"), blocks("2"), blocks("3"), blocks("*", Colors.red)],
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [blocks("4"), blocks("5"), blocks("6"), blocks("-", Colors.red)],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [blocks("7"), blocks("8"), blocks("9"), blocks("+", Colors.red)],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [blocks("/"), blocks("0"), blocks("."), blocks("=", Colors.red)],),      
           
            ]),
          )
        ]),
      ),
    );
  }

  Widget blocks(String text, [Color? color]) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 8, right: 8),
      child: Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          color: Color(
            0xff222520,
            ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: Text (
              text,
              style: TextStyle(
                 color: color?? Colors.white, 
                 fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          )
          ),
    );
  }
}
