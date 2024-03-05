import 'package:flutter/material.dart';

class ScreenArray extends StatefulWidget {
  const ScreenArray({super.key});

  @override
  State<ScreenArray> createState() => _ScreenArrayState();
}

final List<String> aprendices = ['Andrea', 'Carmen', 'Devora', 'Katrina', 'Nidia', 'Tomás'];
int numeroAprendiz = 0;
class _ScreenArrayState extends State<ScreenArray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recorrido Array')
      ),
      body: ListView.builder(
        itemCount: aprendices.length,//Longitud del array
        itemBuilder: (BuildContext context, int index){
            numeroAprendiz++;
            return ListTile(
              leading: const Icon(Icons.person_2_outlined,color: Color.fromARGB(255, 40, 67, 222),size:50),
              title: Text(aprendices[index]),
              subtitle: Text('Aprendiz $numeroAprendiz'),
            );
        }
    )
    );
  }
}

/*
Crear un mapa de 10 elementos y 3 atributos.
Las keys(claves) son: Referencia, nombre, precio

Crear una screen para listar El nombre en el título
y la referencia y precio en el subtitle

Sin realizar cambios en el mapa agregar en la lista
el precio en dólares, es decir debe quedar el precio
en pesos y dólares.
*/