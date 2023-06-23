// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/MainPage.dart';
import 'package:flutter_application_1/pages/login/newUser.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => __loginState();  
}

class __loginState extends State<login>
{
  bool _showPassword = true;
  TextEditingController email= TextEditingController();
  TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor:const Color(0xFF4F6A9F),
              body: SingleChildScrollView(
                child: Container(
                  height: 505.0,
                  decoration: BoxDecoration(color:const Color.fromARGB(255, 72, 184, 186),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow:const [BoxShadow(color: Colors.black45, blurRadius: 4.0, spreadRadius: 7.0, offset: Offset(20.0, 20.0))]
                  ),
                            margin:const EdgeInsets.only(top:80.0, left: 25.0, right: 25.0, bottom: 85.0),
                            padding:const EdgeInsets.only(left: 30.0, right: 30.0),
                             child: Center(
                             child: Column
                                  (
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text( "INICIAR SESION",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                          ),),

                                         const  SizedBox(height: 10.0,),

                                       TextField(
                                        controller: email,
                                        keyboardType:TextInputType.emailAddress,
                                        maxLines: 1,
                                        decoration:const  InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "ingrese su correo electrónico",
                                         labelText:"correo electrónico ",
                                         
                                        ),
                                      
                                      ),
                                     const  SizedBox(height: 20.0,),
                                       TextField(
                                         maxLines: 1,
                                        keyboardType: TextInputType.visiblePassword,
                                        controller: password,
                                        obscureText: _showPassword,
                                        decoration:  InputDecoration(
                                           border: const OutlineInputBorder(),
                                           suffixIcon: IconButton(onPressed: (){
                                            setState(() {
                                              _showPassword =! _showPassword;
                                            });
                                           }, icon: Icon(
                                            _showPassword ? Icons.remove_red_eye_rounded
                                            : Icons.security
                                            )),
                                          hintText: "ingrese su contraseña",
                                          labelText:"contraseña "
                                                )
                                           ),
                                          const  SizedBox(height:20.0),

                                          Container(
                                          
                                            width: 200.0,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(255, 65, 45, 38),
                                              borderRadius: BorderRadius.circular(75.0)
                                            ),
                                            child:ElevatedButton(onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));
                                            },
                                            
                                             child:const Text("CONTINUAR",style: TextStyle(color: Colors.white, fontFamily:"Schyler",fontSize: 17.0 ),),
                                             // ignore: deprecated_member_use
                                             style: ElevatedButton.styleFrom(shape:const  StadiumBorder(), primary:const Color.fromARGB(255, 74, 50, 42), ),
                                               
                                             )
                                              ),
                                              const SizedBox(height: 50.0,),
                                              const Text("¿NUEVO USUARIO? CREA TU CUENTA AQUI ") ,
                                           Container(
                                            margin:const  EdgeInsets.only(top: 30.0),
                                            width: 200.0,
                                            decoration: BoxDecoration(
                                              color:const  Color.fromARGB(255, 55, 32, 23),
                                              borderRadius: BorderRadius.circular(75.0)
                                            ),
                                            child:ElevatedButton(onPressed: (){
                                               Navigator.push(context, MaterialPageRoute(builder: (context) =>  const newUser(),),);
                                            },
                                             child:const Text("CREAR CUENTA",style: TextStyle(color: Colors.white, fontFamily:"Schyler",fontSize: 17.0 ),),
                                              style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor:const Color.fromARGB(255, 74, 50, 42),),
                                             )
                                      )
                                    ],
                                 ) 
                          ) 
                    ),
              ) 
              );
          }
      }
