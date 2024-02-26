import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

 int contadorClicks = 0;
 //Tarea descontar clicks
class _ContadorScreenState extends State<ContadorScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title:Text('Contador Clicks: $contadorClicks')
      ),
      body: const Center(child: Text('Número de clicks',style:TextStyle(fontSize: 25, color:Color.fromARGB(255, 9, 9, 9)))),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child:const Icon(Icons.add),
            onPressed: () {
            contadorClicks++;
            print(contadorClicks);
            setState((){});//Actualizar el screen
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                  
              child:const Icon(Icons.remove_circle_sharp),
              onPressed: () {
              contadorClicks--;
              print(contadorClicks);
              setState((){});//Actualizar el screen
              }),
            ),
        ],
      ),
        
    );
  }
}