import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TextEncabezado extends StatelessWidget {
  String textHomeEncabezado;
  double size;
   TextEncabezado({required this.textHomeEncabezado,required this.size, super.key});


   
     @override
  
    Widget build(BuildContext context) {
      return  Text(textHomeEncabezado, style: TextStyle(
        fontSize: size,
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.bold
     )
      
    );
    
   }
 }
  