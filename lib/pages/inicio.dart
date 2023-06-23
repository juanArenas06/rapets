

import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/login/login.dart';
import 'package:flutter_application_1/wigets/text_app.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();  
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor:const Color(0xFF4F6A9F),
                 body: Center(
                      child: Container(
                          margin:const EdgeInsets.only(top:55.0, left: 25.0, right: 25.0, bottom: 30.0),
                       child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:MainAxisAlignment.center,
                                      children: [
                                        TextEncabezado(
                                        textHomeEncabezado: "¡BIENVENIDOS A RAPETS!", size: 26.0),
                                        const SizedBox(height: 60.0,), 
                                              Container(
                                                width: 220.0,
                                                 height: 220.0,
                                                     decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(360.0),
                                               image:const  DecorationImage(image: AssetImage("assets/images/logo.jpg"),
                                                      fit: BoxFit.cover,
                                                                        ),
                                                                   ),
                                                             ),
                                                  const SizedBox(height: 30.0,),

                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 40.0,top: 20.0),
                                                    height: 40.0,
                                                    width: 300.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color.fromARGB(255, 72, 49, 41),
                                                      borderRadius: BorderRadius.circular(155.0)
                                                    ),
                                                    child:ElevatedButton(
                                                      
                                                      onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const  login(),),);
                                                    },
                                                    // ignore: sort_child_properties_last
                                                    child: const Text("INICIAR SESION",style: TextStyle(fontSize: 20.0),),
                                                      style: ElevatedButton.styleFrom(
                                                      shape: const StadiumBorder(),
                                                       backgroundColor:const  Color.fromARGB(255, 74, 50, 42),
                                                      
                                                           )
                                                        ), 
                                                     )
                                                 ],
                                            ),
                       
                         ),
                    ),
                 
                
                             );
                      
               }
      }
