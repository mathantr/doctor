import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Stack(
        children: [
          Positioned(
            left: 30,
            child: Material(
              elevation: 0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 180.0,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: 10,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 150,
                width: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(107, 115, 194, 1),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://png2.cleanpng.com/sh/0cf54120ca11aa210808c2764634edd4/L0KzQYm3VMA1N6V8j5H0aYP2gLBuTgBpgaRue9tqbj3xhcP6if5oNZlqed59aD3mccPsTfhwe6FujNN1LYTrdX7rjBN1d6MyTdNsNUTkdYeAg8VibWozTKkCMEa2Q4O4VcIzQGgASqIBNUC8RHB3jvc=/kisspng-physician-nursing-health-care-hospital-the-doctor-5ac54ae67c5ae9.4770633215228792065094.png',
                        ))),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr.Joseph',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Dental Specalist',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.4)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(107, 115, 194, 1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone,
                          size: 15,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(107, 115, 194, 1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          size: 15,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(107, 115, 194, 1),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.verified_user,
                          size: 15,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
