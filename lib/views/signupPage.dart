import 'package:flutter/material.dart';
import 'package:restaurante/views/wcWidgets.dart';
import 'package:restaurante/views/welcomePage.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
            width: width * 0.85,
            height: height * 0.85,
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
                    }, const Color(0xFFCAC6CC), 'Volver', width * 0.2,
                        height * 0.06),
                    const Spacer(flex: 30),
                  ],
                ),
                const Spacer(flex: 1),
                Image.asset(
                  'assets/moai.png',
                  width: width * 0.4,
                  height: width * 0.4,
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: width * 0.5,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Nombre Completo',
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: width * 0.5,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Usuario',
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: width * 0.5,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                button(() {
                  // Función
                }, const Color(0xFF16AAFF), 'Registrarse', width * 0.35,
                    height * 0.06),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
