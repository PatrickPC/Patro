// ignore: unused_import
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:patra/Dashboard.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Tharu Patra',
      

      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      
    );
  }
}



