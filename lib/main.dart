import 'package:flutter/material.dart';
import 'package:flutter_ai_app/homepage.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({ super.key});
  @override
  Widget build (BuildContext context){
 return MaterialApp(
 home:homepage() ,
 theme: ThemeData(
   fontFamily: 'KodeMono',
   brightness: Brightness.dark,
   scaffoldBackgroundColor: Colors.grey ,
     primaryColor: Colors.deepPurple
 ),
 );
  }
  }
