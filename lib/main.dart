import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List<String> categoriesName = [
    'Pizza',
    'Burger',
    'Drinks',
    'Salads',
    'Donuts',
    'Snacks'
  ];

  List<String> categoriesImages = [
    'assets/images/pizza.png',
    'assets/images/burger.png',
    'assets/images/drink.png',
    'assets/images/salad.png',
    'assets/images/donut.png',
    'assets/images/snacks.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.nest_cam_wired_stand,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffe6e5e4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                            child: Text(
                              '745 Lincolin PI',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600

                              ),
                            ),
                          ),
                      ),
                      Icon(
                        Icons.shopping_basket_outlined,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Main \nCategories',
                    style: GoogleFonts.poppins(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      height: 1.3
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),


                  Container(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: categoriesName.length,
                        itemBuilder: (context, index){
                          return Container(
                            width: 110,
                            height: 160,
                            child: Card(
                              color: Colors.white,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 13,bottom: 10),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffe6e5e4),
                                      radius: 40,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(categoriesImages[index]),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    categoriesName[index],
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
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
