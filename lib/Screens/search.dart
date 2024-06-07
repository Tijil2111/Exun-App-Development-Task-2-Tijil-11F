import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/Screens/cardScreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<String> title = <String>[
    "Boston Lettuce",
    "Orange",
    "Bread",
    "Sweets",
    "Noodles",
    "Coffee",
  ];
  final List<String> image = <String>[
    "assets/bg1.png",
    "assets/bg2.png",
    "assets/bg3.png",
    "assets/bg4.png",
    "assets/bg5.png",
    "assets/bg6.png",
  ];
  final List<String> quantity = <String>[
    "(42)",
    "(32)",
    "(22)",
    "(56)",
    "(65)",
    "(59)",
  ];
  @override
  Widget build(BuildContext context) {
    const mainColor = Color.fromRGBO(45, 12, 85, 100);
    const secondaryColor = Color.fromRGBO(149, 134, 168, 100);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        selectedItemColor: mainColor,
        unselectedItemColor: secondaryColor,
      ),
      appBar: AppBar(
        foregroundColor: mainColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Categories",
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
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: mainColor,
                  ),
                  hintText: "Search",
                  hintStyle: GoogleFonts.roboto(
                    color: mainColor,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              SizedBox(
                height: 450,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 15.0,
                  ),
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CardScreen(),
                          ),
                        );
                      },
                      child: Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(246, 245, 245, 100),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(246, 245, 245, 100),
                                  blurRadius: 1.0,
                                ),
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                image[index],
                                width: 190,
                              ),
                              Text(
                                title[index],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: mainColor,
                                )),
                              ),
                              Text(
                                quantity[index],
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                  textStyle: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: secondaryColor,
                                  ),
                                ),
                              ),
                            ],
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
