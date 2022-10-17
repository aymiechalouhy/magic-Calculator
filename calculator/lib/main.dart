import 'package:flutter/material.dart';
import 'package:magic_calculator/home.dart';

void main() {
  runApp(const MagicCal());
}
class MagicCal extends StatelessWidget {
const MagicCal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


