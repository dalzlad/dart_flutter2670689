import 'package:flutter/material.dart';
import 'package:list_menu/screens/array_screen.dart';
import 'package:list_menu/screens/mision_screen.dart';
import 'package:list_menu/screens/productos_screen.dart';
import 'package:list_menu/screens/rectangulo_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mi App', style: TextStyle(color:Colors.black, fontSize: 30),),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
            const ListTile(title: Text('Home'),
                    subtitle: Text('Inicio de la aplicación'),
                    leading: Icon(Icons.home,color: Colors.teal,),
                    trailing: Icon(Icons.navigate_next_outlined, color: Colors.teal,),
            ),
            ListTile(title: const Text('Misión'),
                    subtitle: const Text('Quienes somos'),
                    leading: const Icon(Icons.people_alt_outlined, color: Colors.teal,),
                    trailing: const Icon(Icons.navigate_next_outlined,color: Colors.teal, ),
                    onTap: () { //Abrir otra Screen
                    final route = MaterialPageRoute( 
                    builder: (context) => const MisionScreen() );
                    Navigator.push(context, route);
                  },
            ),
            ListTile(title: const Text('Productos'),
                    subtitle: const Text('Nuestros productos'),
                    leading: const Icon(Icons.production_quantity_limits_outlined,color: Colors.teal, ),
                    trailing: const Icon(Icons.navigate_next_outlined,color: Colors.teal,),
                    onTap: () { //Abrir otra Screen
                    final route = MaterialPageRoute( 
                    builder: (context) => const ProductosScreen() );
                    Navigator.push(context, route);
                  },
            ),
            ListTile(title: const Text('Contacto'),
                    subtitle: const Text('¿Dónde estamos?'),
                    leading: const Icon(Icons.contact_mail_outlined,color: Colors.teal,),
                    trailing: const Icon(Icons.navigate_next_outlined,color: Colors.teal,),
                    onTap: () { //Abrir otra Screen
                    final route = MaterialPageRoute( 
                    builder: (context) => const MisionScreen() );
                    Navigator.push(context, route);
                  },
            ),
            ListTile(title: const Text('Array'),
                    subtitle: const Text('Listar Datos de Array'),
                    leading: const Icon(Icons.list_alt_rounded,color: Colors.teal,),
                    trailing: const Icon(Icons.navigate_next_outlined,color: Colors.teal,),
                    onTap: () { //Abrir otra Screen
                    final route = MaterialPageRoute( 
                    builder: (context) => const ScreenArray() );
                    Navigator.push(context, route);
                  },
            ),
            ListTile(title: const Text('Rectángulo'),
                    subtitle: const Text('Área y Perímetro del Rectángulo'),
                    leading: const Icon(Icons.rectangle_outlined,color: Colors.teal,),
                    trailing: const Icon(Icons.navigate_next_outlined,color: Colors.teal,),
                    onTap: () { //Abrir otra Screen
                    final route = MaterialPageRoute( 
                    builder: (context) => const RectanguloScreen() );
                    Navigator.push(context, route);
                  },
            )
          ],
        )
    );
  }
}