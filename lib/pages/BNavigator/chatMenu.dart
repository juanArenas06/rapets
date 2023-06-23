// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Chats/components/chat.dart';
import 'package:flutter_application_1/pages/chatsMenu/messagesApi.dart';
import 'package:flutter_application_1/pages/chatsMenu/contentMessage.dart';



class ChatsMenu extends StatefulWidget {
  const ChatsMenu({super.key});

  @override
  State<ChatsMenu> createState() => _ChatsMenuState();
}

class _ChatsMenuState extends State<ChatsMenu> {
  @override
  Widget build(BuildContext context) =>Scaffold(
    backgroundColor: Color.fromARGB(255, 7, 30, 23),
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 7, 30, 23),
      centerTitle: true,
      title: Text("CHATS",style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold),),
    ),
    body: FutureBuilder<List<ContentMessage>>(
      future: MessagesApi.getContentMessageLocally(context) , 
      builder: (context, snapshot) {
             final messages = snapshot.data;

             switch( snapshot.connectionState){

              case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
              default:
              if(snapshot.hasError){
                return Center( 
                  child: Text(' Ha ocurrido un error: ${snapshot.error}', style:  TextStyle(fontWeight: FontWeight.bold),),);
              }else{
                 return buildContentMessages(messages!);
              }
             
             }
      }),
    );

      Widget buildContentMessages(List<ContentMessage> messages) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: messages.length,
        itemBuilder: ((context, index) {
          final message = messages[index];
          
          return ListTile(
            onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => Chat(user:message,))) ,
            leading: CircleAvatar(backgroundImage: AssetImage(message.image),),
             
            title: Text(message.userName, style: TextStyle(color: Colors.grey, fontSize: 18)),
            subtitle: Text(message.lastMessage,
             style: message.isRead
             ? TextStyle(color: Colors.grey)
             : TextStyle(color: Colors.white)),
          );
        }),
        
        );
}