import 'package:flutter/material.dart';

class RectanguloScreen extends StatefulWidget {
  const RectanguloScreen({super.key});

  @override
  State<RectanguloScreen> createState() => _RectanguloScreenState();
}


class _RectanguloScreenState extends State<RectanguloScreen> {
 //Definir controladores y variables para capturar  valores de las cajas de texto
 TextEditingController largoController = TextEditingController();
 TextEditingController anchoController = TextEditingController();
 String resultado = '';

 void calcularArea(){
  try {
    double largo = double.parse(largoController.text);
    double ancho = double.parse(anchoController.text);
    double area = largo * ancho;
    setState(() { //Cambiar de estado el objeto
      resultado = 'El área es: $area';
    });
  } catch (e) {
    setState(() { //Cambiar de estado el objeto
        resultado = 'No se puede calcular verifique';
    });
  }
 }

 void calcularPerimetro(){
  try {
    double largo = double.parse(largoController.text);
    double ancho = double.parse(anchoController.text);
    double perimetro = 2*largo + 2*ancho;
    setState(() { //Cambiar de estado el objeto
      resultado = 'El perímetro es: $perimetro';
    });
  } catch (e) {
    setState(() { //Cambiar de estado el objeto
        resultado = 'No se puede calcular verifique';
    });
  }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectángulo'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 350,
          color: Color.fromARGB(255, 69, 196, 166),
          child: Column(
            children: [
              TextField(
                controller: largoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Largo',
                labelStyle:TextStyle(fontWeight: FontWeight.bold)),
                //border: style:BorderStyle.solid,
                maxLength: 3
      
              ),
              const SizedBox(height: 15,),
              TextField(
                controller: anchoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Ancho'),
                maxLength: 3,
              ),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: calcularArea, child: Text('Calcular Área')),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: calcularPerimetro, child: Text('Calcular Perímetro')),
              const SizedBox(height: 15,),
              Text('Área: $resultado'),
              
            ],
          ),
        ),
      ),
    );
  }
}