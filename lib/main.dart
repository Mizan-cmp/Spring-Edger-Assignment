import 'package:flutter/material.dart';
import 'package:spring_edge/home.dart';

void main() {
  runApp(const SpringEdger());
}

class SpringEdger extends StatelessWidget {
  const SpringEdger({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
