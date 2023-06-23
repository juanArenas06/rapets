import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatIputField extends StatelessWidget {
  const ChatIputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
                padding:const EdgeInsets.symmetric(horizontal: 5.0 ,vertical: 10.0),
                decoration:  BoxDecoration(
                color: Colors.grey[850],
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow:[
                               BoxShadow(
                                    offset: const Offset(0, 4),
                                     blurRadius: 32.0,
                                     color:const Color(0xFf087949).withOpacity(0.08)
                               ) 
                           ]
                                ),
                child: SafeArea(
                  child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                         const Icon(Icons.mic,color: Colors.black,),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[875],
                                borderRadius: BorderRadius.circular(40.0),
                                // ignore: prefer_const_literals_to_create_immutables
                                
                                ),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Padding(padding: EdgeInsets.all(10.0)),
                                 const Icon(Icons.sentiment_satisfied_alt_outlined, color: Colors.grey),
                                 const SizedBox(width: 10.0),
                                  Expanded(child: TextField(
                                  cursorColor: Colors.grey.shade400,
                                  decoration: const InputDecoration(
                                    hintText: "Escribir mensaje",
                                    border: InputBorder.none),
                                 )
                                 ),
                                 const Icon(Icons.camera_alt_outlined)
                              ],
                            ),
                          ))


                  ],
                )),
            ),
          ),
        ],
      ),
    );
  }
}