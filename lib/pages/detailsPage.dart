// ignore_for_file: unused_element, prefer_const_constructors_in_immutables


import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Chats/components/chat.dart';

class Details extends StatefulWidget {
   Details({ super.key,});
  
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFF4F6A9F),
       appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back,color: Colors.white,),
       onPressed: () => Navigator.of(context).pop(),
       ),
        backgroundColor: const Color.fromARGB(255, 52, 36, 70), 
         centerTitle: true,
         title: const  Text("INFORMACION", style: TextStyle(color: Colors.white),),),
         body: Center(
          child: Column(
            children: [
             Container(
              margin:const EdgeInsets.only( top: 25.0,left: 10.0, right: 10.0) ,
              height: 300.0,
              width: 400.0, 
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
               image:const  DecorationImage(
               image: AssetImage('assets/images/mascota.jpg'),
                fit: BoxFit.cover), 
                          ),
                    ),
                _createCard()
                        ],
                      ),
                    ),
             floatingActionButton:FloatingActionButton(
                                        backgroundColor: Colors.purple[800],
                                        child: const Icon(Icons.chat), 
                                        onPressed: (){
                                        
                                          }
                                           
    )
    );     
       }
}



Widget _createCard(){
    return  Card(
                margin: const EdgeInsets.only(top: 25.0,left: 10.0,right: 10.0,bottom: 10.0),
                child: Container(
                  height: 130.0,
                  width:400.0,
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.blueGrey,
                  child: Column(
                                children: const <Widget>[ 
                                              Text("Nombre de la mascota", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                                               SizedBox(height: 5.0,),
                                               Text(" en esta parte encontraras informacion sobre la mascota, su edad, genero, si tiene aguna enfermedad, entre otros datos.",
                                               style: TextStyle(fontSize: 14.0),)

                                 ],
                          ),
                   ),
       );

    
}



