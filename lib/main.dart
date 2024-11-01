import 'package:buttonnavigator/pages/home.dart';
import 'package:buttonnavigator/pages/people.dart';
import 'package:buttonnavigator/pages/setting.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pagAct = 0;
  List<Widget> _paginas=[Home(),Setting(),People(),People()];
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
       
        body: _paginas[_pagAct],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
             _pagAct=index; 
            });
          },
          currentIndex: _pagAct, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
          label:'home',
          backgroundColor:Colors.red,

          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
          label:'settings',
          backgroundColor:const Color.fromARGB(255, 243, 229, 33),

          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_rounded),
          label:'people',
          backgroundColor:Colors.blue,

          ),
           BottomNavigationBarItem(
              icon: Icon(Icons.login_rounded),
          label:'exit',
          backgroundColor:const Color.fromARGB(255, 85, 205, 57),

          ),
         ]),
      ),

    );
  }
}