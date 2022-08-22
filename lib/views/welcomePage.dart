import 'package:flutter/material.dart';
import 'package:restaurante/widgets/items.dart';
import 'package:restaurante/views/loginPage.dart';
import 'package:restaurante/views/signupPage.dart';
import 'package:restaurante/views/menuPage.dart';
import 'package:restaurante/views/bookingPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

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
                const Spacer(flex: 1),
                const Text(
                  'BIENVENIDO A',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(flex: 1),
                const Text(
                  'BEACHELA RESTAURANT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(flex: 1),
                Image.asset(
                  'assets/beach.png',
                  height: height * 0.3,
                  width: height * 0.3,
                ),
                const Spacer(flex: 1),
                const Text(
                  '¿QUÉ DESEA HACER?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF000000),
                  ),
                ),
                const Spacer(flex: 1),
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignupPage();
                      },
                    ),
                  );
                }, const Color(0xFF16AAFF), 'Registrarse', width * 0.35,
                    height * 0.06),
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                }, const Color(0xFF16AAFF), 'Iniciar Sesión', width * 0.35,
                    height * 0.06),
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MenuPage();
                      },
                    ),
                  );
                }, const Color(0xFF16AAFF), 'Ver Menú', width * 0.35,
                    height * 0.06),
                button(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BookingPage();
                      },
                    ),
                  );
                }, const Color(0xFF16AAFF), 'Hacer Reservas', width * 0.35,
                    height * 0.06),
                const Spacer(flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/island.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                    Image.asset(
                      'assets/umbrella.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                    Image.asset(
                      'assets/sunrise.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                    Image.asset(
                      'assets/beach-bar.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                    Image.asset(
                      'assets/beach-chair.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                    Image.asset(
                      'assets/beach-volleyball.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                    Image.asset(
                      'assets/beach2.png',
                      height: width * 0.1,
                      width: width * 0.1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
