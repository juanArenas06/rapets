 import 'package:flutter/material.dart';

import '../../user/user.dart';
import '../../user/userApi.dart'; 


 class UserProfile extends StatefulWidget {
   const  UserProfile({ super.key,  });
  
  @override
  State<UserProfile> createState() => _UserProfileState();
  
}

class _UserProfileState extends State<UserProfile> {
  final double coverHeigh =200;
  final double profileHeight = 130;
  
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      backgroundColor:const Color.fromRGBO(4, 9, 35,1),
        body: FutureBuilder<List<User>>(
    future: UserApi.getUserLocally(context),
    builder: (context, snapshot) {
      final user = snapshot.data;
            switch( snapshot.connectionState){

              case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
              default:
              if(snapshot.hasError){
                return  Center( 
                child: Text(' Ha ocurrido un error: ${snapshot.error}', style:const  TextStyle(fontFamily: "Poppins"),));
              }else{
                 return buildUserInformation(user![0]);
              }
             
             }

    } ,
   )
    );
  }

  Widget buildUserInformation( User user) {
     return SingleChildScrollView(
       child: Container(
         margin: const EdgeInsets.only(top:85.0, left: 25.0, right: 25.0, bottom: 55.0),
         child: Column(
              children:[

                     Container(
                      width: MediaQuery.of(context).size.width -30,
                        height:200.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(

                            image: AssetImage("assets/images/mascota.jpg"),
                            fit: BoxFit.cover
                            )
                            )
                      ),

                      const SizedBox(height: 30.0), 
                  
                 buildUserContent(user)
            ]
          ),
       ),
     );

  }
}


 


 Widget buildUserContent(User user)=> Column(
  children:[
     Card(
      color: Colors.white,
      child: SizedBox(
                  height:50.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                user.userName,
                    style:const  TextStyle(color: Colors.black, fontSize: 25.0,fontWeight: FontWeight.bold),),
                  )),
              ),
              const SizedBox(height: 15.0),
  Card(
      color: Colors.white,
      child: SizedBox(
                  height:50.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                user.age,
                    style:const  TextStyle(color: Colors.black, fontSize: 25.0,fontWeight: FontWeight.bold),),
                  )),
              ),
              const SizedBox(height: 15.0),
   Card(
      color: Colors.white,
      child: SizedBox(
                  height:50.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                user.city,
                    style:const  TextStyle(color: Colors.black, fontSize: 25.0,fontWeight: FontWeight.bold),),
                  )),
              ),
               const SizedBox(height: 15.0),
    Card(
      color: Colors.white,
      child: SizedBox(
                  height:50.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                user.country,
                    style:const  TextStyle(color: Colors.black, fontSize: 25.0,fontWeight: FontWeight.bold),),
                  )),
              ),
               const SizedBox(height: 15.0),
    Card(
      color: Colors.white,
      child: SizedBox(
                  height:50.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                user.phoneNumber,
                    style:const  TextStyle(color: Colors.black, fontSize: 25.0,fontWeight: FontWeight.bold),),
                  )),
              ),
  ],

 );

 





 

  
 