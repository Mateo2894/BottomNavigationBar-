import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Bienvenido a people',style: TextStyle(fontSize: 20.0,color: const Color.fromARGB(100, 32, 0, 0)),),
    );
  }
}