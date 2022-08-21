import 'package:flutter/material.dart';
import 'package:restaurante/widgets/items.dart';
import 'package:restaurante/views/welcomePage.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List<String> items = [
    'Poblado',
    'Laureles',
    'San Javier',
    'Estadio',
    'Envigado',
    'Belén',
    'Santa Mónica'
  ];
  String? selectedItem = 'Poblado';
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
          child: Container(
            width: width * 0.9,
            height: height * 0.9,
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
                    const Spacer(flex: 3),
                    button(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const WelcomePage();
                          },
                        ),
                      );
                    }, const Color(0xFF78D38F), 'Volver', width * 0.2,
                        height * 0.06),
                    const Spacer(flex: 30),
                  ],
                ),
                const Spacer(flex: 3),
                Image.asset(
                  'assets/island2.png',
                  width: width * 0.5,
                  height: width * 0.5,
                ),
                const Spacer(flex: 3),
                const Text(
                  'Elija la sede en donde desea reservar',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: width * 0.5,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Color(0xFF1EFC01),
                        ),
                      ),
                    ),
                    value: selectedItem,
                    items: items
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (item) => setState(() => selectedItem = item),
                  ),
                ),
                const Spacer(flex: 3),
                const Text(
                  'Indique el número de personas',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: width * 0.2,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF1EFC01),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 3),
                button(() {
                  // Función
                }, const Color(0xFF16AAFF), 'Confirmar', width * 0.35,
                    height * 0.06),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
