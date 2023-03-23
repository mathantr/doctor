import 'package:flutter/material.dart';

class AppWidgets extends StatelessWidget {
  const AppWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 225,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(158, 106, 205, 1),
                Color.fromRGBO(105, 115, 223, 1),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 15,
                child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/3945/3945664.png'),
                      color: Colors.white,
                      size: 45,
                    )),
              ),
              Positioned(
                top: 20,
                left: 360,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(blurRadius: 1)]),
                  child: Icon(
                    Icons.person_rounded,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 20,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                        'Identify Your Ideal',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 40,
                      ),
                      child: Text(
                        'Specialist',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 160, left: 20),
                    child: Container(
                      width: 375,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFFFFFFF),
                          isDense: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 15.0),
                          /* -- Text and Icon -- */
                          hintText: "Search Products...",
                          hintStyle: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFFB3B1B1),
                          ), // TextStyle
                          suffixIcon: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 7,
                                  right: 10,
                                ),
                                child: Container(
                                  height: 35,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromRGBO(105, 115, 223, 1),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.search,
                                      size: 26,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ), // Icon
                          /* -- Border Styling -- */
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: const BorderSide(
                              width: 2.0,
                              color: Color(0xFFFF0000),
                            ), // BorderSide
                          ), // OutlineInputBorder
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: const BorderSide(
                              width: 2.0,
                              color: Colors.white,
                            ), // BorderSide
                          ), // OutlineInputBorder
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45.0),
                            borderSide: const BorderSide(
                              width: 2.0,
                              color: Colors.white,
                            ), // BorderSide
                          ), // OutlineInputBorder
                        ), // InputDecoration
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
