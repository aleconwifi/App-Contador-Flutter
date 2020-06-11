import 'package:flutter/material.dart';

class Contador extends StatefulWidget {

@override
createState(){
  return _ContadorState();
}

}


class _ContadorState extends State<Contador> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charallave'), 
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numero de clicks', style: _estiloTexto),
          Text(_conteo.toString(), style: _estiloTexto),

        ],
        )
        
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones()
    );
  }


  Widget _crearBotones(){
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,  
    children: <Widget>[
    SizedBox(width: 30),

    FloatingActionButton(onPressed: _reset,
          child: Icon(Icons.exposure_zero) ,),
    Expanded(child: SizedBox()),
    FloatingActionButton(onPressed: _sustraer,
          child: Icon(Icons.remove) ,),
    SizedBox(width: 7.0),

    FloatingActionButton(onPressed: _agregar,
          child: Icon(Icons.add) ,),
    ],);
    
    
  
  }


  void _agregar(){
    setState(() => _conteo++);
  }

  void _sustraer(){
    if (_conteo<=0){
    setState(() => _conteo=0);
    }else{
    setState(() => _conteo--);
    }
  }

    void _reset(){
    setState(() => _conteo=0);
  }

}