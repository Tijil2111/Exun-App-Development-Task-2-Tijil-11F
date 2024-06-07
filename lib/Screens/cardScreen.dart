import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const mainColor = Color.fromRGBO(45, 12, 85, 100);
    const secondaryColor = Color.fromRGBO(149, 134, 168, 100);
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://s3-alpha-sig.figma.com/img/ed02/3feb/39e754db430384ee1a2a937245b5be42?Expires=1718582400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WCRSp9P9K~V5ZWyGndNXz6-cj1bmzCr8-1KnNDflhrh4W5AlJ0oEePTDJeh2WG6KCYZC0LW4U3Kgg6nNH6Berg8y10wi4PxyVt5ya7r61e~wtbZ7SX-0za0CXXnAvDzpO0BAy438QGtsxwSfg3uT9UeIJ~wUu1a7mscuYfW~9TvbDgXLua2GVeJXgrveNMxiHzKPkHrGQaJI-42jyEJ5w6cmxwhTPEZpBDBWY5rrbYWCedJaNlRtC1rD6LQXWFQ~LXJ71yTXvb2B4SyFpy0qWhzhHO7CzldJ7VtY6TcOnBfVPF0xLxRdKnKhI5Cg4oleGN4qxhPXDAaAsjUXCmFF6A__",
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
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Boston Lettuce",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: mainColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "1.10",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: mainColor,
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "€/piece",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: mainColor,
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "~ 150 gr / piece",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: const Color.fromRGBO(11, 206, 131, 100),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Spain",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        color: mainColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 400,
                    child: Text(
                      "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          color: secondaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
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
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      child: const Icon(
                        Icons.favorite_outline,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(11, 206, 131, 100),
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
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.shopping_cart_outlined,
                          ),
                          SizedBox(width: 50),
                          Text("Add to cart")
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
