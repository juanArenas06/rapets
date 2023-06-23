

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/MainPage.dart';


class newUser extends StatefulWidget {
  const newUser ({super.key});

  @override
  State<newUser > createState() => _newUserState();  
}

class _newUserState extends State<newUser > {

bool _securityPassword = true;
TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor:const Color(0xFF4F6A9F),
              body: Container(
                decoration: BoxDecoration(color:const Color.fromARGB(255, 72, 184, 186),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow:const [BoxShadow(color: Colors.black45, blurRadius: 4.0, spreadRadius: 7.0, offset: Offset(20.0, 20.0))]
                ),
                          margin:const EdgeInsets.only(top:55.0, left: 25.0, right: 25.0, bottom: 55.0),
                          padding:const EdgeInsets.only(left: 30.0, right: 30.0),
                           child: Center(
                           child: Column
                                (
                                  mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const  Text("¡Bienvenido,es hora de crear tu cuenta!", style:  TextStyle( color:  Colors.black,fontSize: 20.0),),
                                     const  SizedBox(height:20.0),
                                     const  TextField(
                                       maxLines: 1,
                                         decoration: InputDecoration(
                                           border: OutlineInputBorder(),
                                        hintText: "Nombre y apellido "
                                      ),
                                    ),
                                    const  SizedBox(height:20.0),
                                    const  TextField(
                                       maxLines: 1,
                                        decoration: InputDecoration(
                                           border: OutlineInputBorder(),
                                        hintText: "ciudad"
                                      ),
                                    ),
                                    const  SizedBox(height: 20.0,),
                                    const  TextField(
                                       maxLines: 1,
                                      keyboardType: TextInputType.emailAddress,
                                       decoration:  InputDecoration(
                                         border: OutlineInputBorder(),
                                        hintText: "ingrese su correo electrónico "
                                              )
                                         ),
                                     const  SizedBox(height:20.0),
                                     TextField(
                                         maxLines: 1,
                                        keyboardType: TextInputType.visiblePassword,
                                        controller: password,
                                        obscureText: _securityPassword,
                                        decoration:  InputDecoration(
                                           border: const OutlineInputBorder(),
                                           suffixIcon: IconButton(onPressed: (){
                                            setState(() {
                                              _securityPassword =! _securityPassword;
                                            });
                                           }, icon: Icon(
                                            _securityPassword ? Icons.remove_red_eye_rounded
                                            : Icons.security
                                            )),
                                          hintText: "ingrese su contraseña",
                                          labelText:"contraseña "
                                                )
                                           ),
                                   Container(
                                          margin: const EdgeInsets.only(top: 40.0),
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 65, 45, 38),
                                            borderRadius: BorderRadius.circular(75.0)
                                          ),
                                          child:ElevatedButton(
                                            child: const  Text("Registrarme",style: TextStyle(color: Colors.white,fontSize: 20),),
                                           style: ElevatedButton.styleFrom(shape: const StadiumBorder(), backgroundColor: const Color.fromARGB(255, 74, 50, 42), ),
                                           
                                            onPressed: (){
                                             Navigator.push(context, MaterialPageRoute(builder: (context) =>const  MainPage(),),);
                                            },
                                          
                                             
                                           )
                                            ),
                                            
                                  ],
                               ) 
                        ) 
                  ) 
              );
               }
      }