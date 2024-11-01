import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Bienvenido a home',style: TextStyle(fontSize: 20.0,color: const Color.fromARGB(100, 255, 0, 0)),),
    );
  }
}