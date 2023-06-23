



import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/chatsMenu/contentMessage.dart';


class MessagesApi{

   static Future <List<ContentMessage>> getContentMessageLocally(BuildContext context)async{
    final assetBundle = DefaultAssetBundle.of(context);
  final data = await assetBundle.loadString('assets/messagesMenu.json');
final body = json.decode(data);

return body.map<ContentMessage>(ContentMessage.fromJson).toList();
  }
  
}