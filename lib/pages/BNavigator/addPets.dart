// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart'; 

class AddPet extends StatefulWidget {
    const AddPet({ super.key });
  
  @override
  State<AddPet > createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color.fromARGB(255, 79, 105, 117),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            margin: const EdgeInsets.only(top:55.0, left: 25.0, right: 25.0, bottom: 55.0),
            child: Column(
              children: [
               const  SizedBox(height: 70.0),
                      Container(
                        height:200.0,
                        width: MediaQuery.of(context).size.width -40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/mascota.jpg"),
                            fit: BoxFit.cover
                            )
                            ),
                      ),
                      const SizedBox(height: 40.0),
                      inputName(),
                      const SizedBox(height: 15.0),
                      inputAge(),
                       const SizedBox(height: 15.0),
                       inputCity(),
                        const SizedBox(height: 15.0),
                       inputCountry(),
                       const SizedBox(height: 15.0),
                       inputPetBreed(),
                       const SizedBox(height: 15.0),
                       inputDeseases(),
                       const SizedBox(height: 30.0),
                      uploadPet(context),
                      
              ]),
          ),
        ) ,
        ) 
    );
  }

  Container uploadPet(BuildContext context) {
    return Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width -40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const StadiumBorder()                   
                       ),
                    onPressed: (){
                
                  }, child:const  Text("Subir Mascota",style: TextStyle(color: Colors.white,fontSize: 20),)),
                );
  }

  Container inputName() {
    return Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const  EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                     ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Nombre"
                    ),
                  ),
                );
  }

  Container inputAge() {
    return Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const  EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                     ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Edad"
                       
                    ),
                  ),
                );
  }

  Container inputCity() {
    return Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const  EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                     ),
                  child: TextFormField(
                     keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Ciudad"
                    ),
                  ),
                );
  }

  
  Container inputCountry() {
    return Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const  EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                     ),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "País"
                    ),
                  ),
                );
  }

 Container inputPetBreed() {
    return Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const  EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                     ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Raza de la mascota"
                    ),
                  ),
                );
  }

  Container inputDeseases() {
    return Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 15.0),
                  margin: const  EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black),
                     ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                       border: InputBorder.none,
                       hintText: "Enfermedades(opcional)"
                    ),
                  ),
                );
  }
}