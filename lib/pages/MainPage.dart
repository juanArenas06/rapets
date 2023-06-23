
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BNavigator/addPets.dart';
import 'package:flutter_application_1/pages/BNavigator/chatMenu.dart';
import 'package:flutter_application_1/pages/BNavigator/homePage.dart';
import 'package:flutter_application_1/pages/BNavigator/userProfile.dart';




class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List pages=[

  const  HomePage(),
    const ChatsMenu(),
   const UserProfile(),
   const  AddPet()
  ];
  int _currentIndex = 0;

  void onTap(int index){ 
    setState(() {
       _currentIndex = index;
       },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar( 
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        onTap: onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home', backgroundColor:Color.fromARGB(255, 52, 36, 70)),
          BottomNavigationBarItem( icon: Icon(Icons.chat),label: 'Chats', backgroundColor: Color.fromARGB(255, 33, 70, 36)),
          BottomNavigationBarItem( icon:Icon(Icons.emoji_people_sharp),label: "Perfil", backgroundColor:  Color.fromRGBO(4, 9, 35,1),),
          BottomNavigationBarItem(icon: Icon(Icons.pets),label: "Agregar mascotas",   backgroundColor: Color.fromARGB(255, 79, 105, 117))
        ],
      )
    ); 
  }
}
