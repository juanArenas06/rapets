

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/detailsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key });
 @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
              appBar: AppBar(
                  automaticallyImplyLeading: false,
                centerTitle: true,
                title: const Text("¡ES HORA DE ACTUAR!"),
                backgroundColor:const Color.fromARGB(255, 52, 36, 70)
              ),
              backgroundColor: const Color(0xFF4F6A9F),
             body:Column(
              children: [
                const TabBar(
                  
                  unselectedLabelColor:Colors.grey,
                  tabs:[
                  Tab(text: "Adopta",),
                  Tab(text: "Rescate",)

                ]),
                Expanded(child: TabBarView(children: [
                  _galeria(),
                  _RESCATE()
                ]))
              ],
             )
      ),
    );
  }
}

  

Widget _galeria(){
  
  return GridView.builder(gridDelegate:
  const  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:4,
                  mainAxisSpacing: 5.0, 
                  crossAxisSpacing: 5.0), 
                  itemBuilder:  (context, int index) {
           
                   return GestureDetector(
                                  onTap: () {
                                   Navigator.push(context, MaterialPageRoute( builder: (context) => Details()));
                              },
                                child: Hero(
                                        tag: index,
                                        child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration:const  BoxDecoration(
                                                                  image:  DecorationImage(
                                                                    image:AssetImage('assets/images/mascota.jpg'),
                                                                    fit: BoxFit.cover, ),
                                                            ),
                                              ),
                                  ),
                        ); 
                },
          );
                      
 
}

Widget _RESCATE(){
  
  return GridView.builder(gridDelegate:
  const  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:4,
                  mainAxisSpacing: 5.0, 
                  crossAxisSpacing: 5.0), 
                  itemBuilder:  (context, int index) {
           
                   return GestureDetector(
                                  onTap: () {
                                   Navigator.push(context, MaterialPageRoute( builder: (context) => Details()));
                              },
                                child: Hero(
                                        tag: index,
                                        child: Container(
                                                width: 100.0,
                                                height: 120.0,
                                                decoration:const  BoxDecoration(
                                                                  image:  DecorationImage(
                                                                    image:AssetImage('assets/images/mascota.jpg'),
                                                                    fit: BoxFit.cover, ),
                                                            ),
                                              ),
                                  ),
                        ); 
                },
          );
                      
 
}


