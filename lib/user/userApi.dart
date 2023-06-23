import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/user/user.dart';

class UserApi{
  static Future<List<User>>getUserLocally(BuildContext context) async{
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');
    final body = json.decode(data);

    

    return body.map<User>(User.fromJson).toList();

    

  }
  
}