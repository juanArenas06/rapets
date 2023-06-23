import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'message.dart';


class TextApi{

   static Future <List<Message>> getMessageLocally(BuildContext context)async{
    final assetBundle = DefaultAssetBundle.of(context);
  final data = await assetBundle.loadString('assets/messagesChat.json');
final body = json.decode(data);

return body.map<Message>(Message.fromJson).toList();
  }
  
}