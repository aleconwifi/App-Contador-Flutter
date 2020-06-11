import 'package:appcontador/src/pages/contador.dart';
import 'package:appcontador/src/pages/home_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {

@override
Widget build( context ){

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Center(
      child: Contador(),
    )
    
  );

}


}