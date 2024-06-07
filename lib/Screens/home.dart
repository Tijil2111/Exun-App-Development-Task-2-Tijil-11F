import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/Screens/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const mainColor = Color.fromRGBO(45, 12, 85, 100);
    const secondaryColor = Color.fromRGBO(149, 134, 168, 100);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg.png"),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset("assets/logo.png"),
            ],
          ),
        ],
      ),
      bottomSheet: Container(
        height: 650,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(246, 245, 245, 100),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset("assets/icon1.png"),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Non-Contact ",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: mainColor,
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                "Deliveries",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: mainColor,
                    fontSize: 34,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door. ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: secondaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(11, 206, 131, 100),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    textStyle: GoogleFonts.inter(
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  child: const Text("ORDER NOW"),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  "DISMISS",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      color: secondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
