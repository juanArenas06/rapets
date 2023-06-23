import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Chats/components/message.dart';
import 'package:flutter_application_1/pages/Chats/components/textApi.dart';
import 'package:flutter_application_1/pages/chatsMenu/contentMessage.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';



class Chat extends StatefulWidget {
  final ContentMessage user;
  const Chat({super.key, required this.user});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
       backgroundColor:  const Color.fromARGB(255, 10, 20, 28),
       title: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(widget.user.image)),
         const  SizedBox(width: 7.0),
          Text(widget.user.userName,style:const TextStyle(fontSize: 16.0),),
           ],
       ),
      ),

      backgroundColor: Colors.grey[850],

   body: FutureBuilder<List<Message>>(
    future: TextApi.getMessageLocally(context),
    builder: (context, snapshot) {
      final message = snapshot.data;
            switch( snapshot.connectionState){

              case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
              default:
              if(snapshot.hasError){
                return  Center( 
                child: Text(' Ha ocurrido un error: ${snapshot.error}', style: const TextStyle(fontFamily: "Poppins"),));
              }else{
                 return buildMessages(message!);
              }
             
             }

    } ,
   )
    
     );
     
    
      
    
  }
}

Widget buildMessages(List<Message> messages) => Column(
  children: [
             Expanded(
                    child:GroupedListView<Message,DateTime>(
                          physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.all(8.0),
                         order: GroupedListOrder.ASC,
                        useStickyGroupSeparators: true,
                        floatingHeader: true,
                        elements:messages ,
                        groupBy: (message)=> DateTime(
                        message.date.year,
                        message.date.month,
                        message.date.day
                ),
                groupHeaderBuilder: ((Message message) => SizedBox(
                         height: 40.0,
                                    child: Center(
                                      child: Card(
                                        color: Colors.indigo[600],
                                        child: Padding(
                                          padding:const EdgeInsets.all(8.0),
                                          child: Text(
                                            DateFormat.yMMMd().format(message.date),
                                            style: const TextStyle(color: Colors.white),
                                          )
                                          ),
                                      ),
                                    ),
                )
          ),

          itemBuilder: (context,Message message)=>Align(
              alignment: message.isSendeByMe
              ? Alignment.centerRight
              : Alignment.centerLeft,
              child: Card(
                color: message.isSendeByMe 
                ? Colors.green[600] 
                : Colors.teal[600],
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(message.text, style: const TextStyle( color: Colors.white),),
                  ),
              ),
            ),


         ),
      ),

      Container(
        height: 50.0,
        width: 350.0,
           padding:const EdgeInsets.only(left: 5.0 ,top: 10.0,right: 5.0,bottom: 10.0),
                decoration:  BoxDecoration(
                color: Colors.grey[600],
                 borderRadius: BorderRadius.circular(50.0)
                ),
                      child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Padding(padding: EdgeInsets.all(10.0)),
                                 const Icon(Icons.sentiment_satisfied_alt_outlined, color: Colors.black54),
                                 const SizedBox(width: 10.0),
                                  Expanded(child: TextField(
                                  cursorColor: Colors.grey.shade400,
                                  decoration: const InputDecoration(
                                    hintText: "Escribir mensaje",
                                    border: InputBorder.none),

                                    onSubmitted: (text) {
                                      final message = Message(
                                        text: text, 
                                        isSendBy:"yo",
                                        isSendTo:"pepito" ,
                                        date: DateTime.now(),
                                         isSendeByMe: true);

                                        setState()=> messages.add(message);
                                        

                                       


                              

                               },
                               
               )
            )
          ]
        )
      )
    ],
);


















/**class Chats extends StatefulWidget {
 final ContentMessage user;
    const Chats({ super.key, required this.user});
   
  

    @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats>
with SingleTickerProviderStateMixin{
   final TextEditingController _sendMessageController = TextEditingController();
   

    @override
  void initState() {
    super.initState();
    _sendMessageController.addListener(() {
      final String text = _sendMessageController.text.toLowerCase();
      _sendMessageController.value =_sendMessageController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _sendMessageController.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // ignore: prefer_const_literals_to_create_immutables
               backgroundColor: Colors.grey[900],
               title: Text(),
            ),
      
      backgroundColor: Colors.grey[850],

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
                    padding: const EdgeInsets.all(8.0),
                    order: GroupedListOrder.ASC,
                    useStickyGroupSeparators: true,
                    floatingHeader: true,
                    elements: messages,
                    groupBy: (message)=> DateTime(
                      message.date.year,
                      message.date.month,
                      message.date.day
                    ),

                                  groupHeaderBuilder: (Message message)=> SizedBox(
                                    height: 40.0,
                                    child: Center(
                                      child: Card(
                                        color: Colors.indigo[600],
                                        child: Padding(
                                          padding:const EdgeInsets.all(8.0),
                                          child: Text(
                                            DateFormat.yMMMd().format(message.date),
                                            style: TextStyle(color: Colors.white),
                                          )
                                          ),
                                      ),
                                    ),
                                  ),
                                  
            itemBuilder: (context,Message message)=>Align(
              alignment: message.isSendeByMe
              ? Alignment.centerRight
              : Alignment.centerLeft,
              child: Card(
                color: message.isSendeByMe ? Colors.green[600] : Colors.teal[600],
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(message.text, style: TextStyle( color: Colors.white),),
                  ),
              ),
            ),
          
            )
          ),
         
         Container(
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
               
                  child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                         const Icon(Icons.mic,color: Colors.black,),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Container(
                              height: 40.0,
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

                                    onSubmitted: (text){
                                      final message = Message(
                                        text:  text ,
                                        date: DateTime.now(),
                                        isSendeByMe: true
                                      );

                                      setState(
                                        () =>information.add(message)
                                         );
                                    },
                                 )
                                 ),
                                 const Icon(Icons.camera_alt_outlined)
                              ],
                            ),
                          )
                          )
                              ],
                )),
            
          
        ],
      ),

           

          
             
       
  
  );
  

 
 } 
  
}**/



