import 'package:flutter/material.dart';
import 'package:restaurante/widgets/items.dart';
import 'package:restaurante/views/welcomePage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF16AAFF),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: width * 0.9,
              height: height * 2,
              decoration: BoxDecoration(
                color: const Color(0xFF67C7FF),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFF1EFC01),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Spacer(flex: 1),
                      button(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const WelcomePage();
                            },
                          ),
                        );
                      }, const Color(0xFF16AAFF), 'Volver', width * 0.2,
                          height * 0.06),
                      const Spacer(flex: 30),
                    ],
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'BEACHELA MENÚ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Entradas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Nachos.....................................15.000'
                    '\n'
                    'Ceviche de Camarones..............25.000'
                    '\n'
                    'Ceviche de Pescado..................20.000'
                    '\n'
                    'Patacones con Hogao...............18.000'
                    '\n'
                    'Empanadas...............................15.000'
                    '\n'
                    'Aritos de Calamar......................25.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Platos Fuertes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Punta de Anca............................35.000'
                    '\n'
                    'Solomito a la Plancha.................40.000'
                    '\n'
                    'Baby Beef...................................30.000'
                    '\n'
                    'Lomo de Cerdo...........................28.000'
                    '\n'
                    'Cañón de Cerdo..........................32.000'
                    '\n'
                    'Chuleta de Cerdo........................28.000'
                    '\n'
                    'Pollo a la Plancha.......................30.000'
                    '\n'
                    'Pechuga Rellena.........................35.000'
                    '\n'
                    'Pollo Gratinado...........................35.000'
                    '\n'
                    'Salmón a la Plancha....................38.000'
                    '\n'
                    'Trucha Gratinada.........................40.000'
                    '\n'
                    'Tilapia.........................................30.000'
                    '\n'
                    'Sancocho de Bagre......................25.000'
                    '\n'
                    'Pulpo a la Gallega........................38.000'
                    '\n'
                    'Camarones al ajillo......................35.000'
                    '\n'
                    'Palmitos de Cangrejo..................30.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Bebidas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Limonada Natural........................8.000'
                    '\n'
                    'Limonada de Coco......................10.000'
                    '\n'
                    'Limonada de Cereza...................10.000'
                    '\n'
                    'Jugo de Mango............................8.000'
                    '\n'
                    'Jugo de Naranja...........................8.000'
                    '\n'
                    'Jugo de Fresa..............................8.000'
                    '\n'
                    'Jugo de Mora..............................8.000'
                    '\n'
                    'Jugo de Lulo...............................8.000'
                    '\n'
                    'Jugo de Mandarina.....................8.000'
                    '\n'
                    'Jugo de Guanábana....................8.000'
                    '\n'
                    'Gaseosa.....................................7.000'
                    '\n'
                    'Soda..........................................6.000'
                    '\n'
                    'Cerveza Nacional.......................9.000'
                    '\n'
                    'Cerveza Importada....................10.000'
                    '\n'
                    'Copa de Vino.............................20.000'
                    '\n'
                    'Agua Mineral..............................5.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Licores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Aguardiente..............................8.000'
                    '\n'
                    'Ron Caldas...............................10.000'
                    '\n'
                    'Ron Medellín............................8.000'
                    '\n'
                    'Vodka......................................12.000'
                    '\n'
                    'Tequila....................................12.000'
                    '\n'
                    'Ginebra....................................15.000'
                    '\n'
                    'Whisky.....................................20.000'
                    '\n'
                    'Brandy......................................20.000'
                    '\n'
                    'Vino.........................................20.000'
                    '\n'
                    'Champagne.............................30.000'
                    '\n'
                    'Cognac....................................40.000'
                    '\n'
                    'Piña Colada.............................30.000'
                    '\n'
                    'Bloody Mary............................30.000'
                    '\n'
                    'Absenta..................................40.000'
                    '\n'
                    'Coco Loco...............................25.000',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const Spacer(flex: 1),
                  Image.asset(
                    'assets/jeju.png',
                    height: height * 0.15,
                    width: height * 0.15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
