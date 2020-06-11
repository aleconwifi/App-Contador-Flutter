
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'), 
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de clicks', style: estiloTexto),
          Text(conteo.toString(), style: estiloTexto),

        ],
        )
        
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            print('Hola mundo');
            //conteo = conteo + 1;
          } ,
          child: Icon(Icons.add),
          
      ),
    );
  }
}