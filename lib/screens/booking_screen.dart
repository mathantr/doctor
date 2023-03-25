import 'package:doctor/screens/Appointment_booked.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/doctorList.dart';

class BookingScreen extends StatelessWidget {
  static const routeNamed = '/booking-screen';

  @override
  Widget build(BuildContext context) {
    final bookInf = ModalRoute.of(context)!.settings.arguments.toString();

    final BookValue = Provider.of<DoctorItem>(context)
        .doctItem
        .firstWhere((element) => element.id == bookInf);

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: Color.fromRGBO(107, 115, 194, 1),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
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
                                    BookValue.imageUrl,
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
                            BookValue.name,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            BookValue.subTitle,
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
              ),
              SizedBox(
                width: 350,
                child: Column(
                  children: [
                    Text(
                      BookValue.description,
                      style: TextStyle(
                        height: 2,
                        fontSize: 15,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Row(
                      children: [
                        Text(
                          'July 2020',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(218, 224, 254, 1)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Sat',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            '07',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  115,
                                                  122,
                                                  191,
                                                  1,
                                                ),
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(218, 224, 254, 1)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Sun',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            '08',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  115,
                                                  122,
                                                  191,
                                                  1,
                                                ),
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(218, 224, 254, 1)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Mon',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            '09',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  115,
                                                  122,
                                                  191,
                                                  1,
                                                ),
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color.fromRGBO(158, 106, 205, 1),
                                          Color.fromRGBO(105, 115, 223, 1),
                                        ])),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Tue',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            '11',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(218, 224, 254, 1)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Sat',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            '07',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  115,
                                                  122,
                                                  191,
                                                  1,
                                                ),
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(218, 224, 254, 1)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 5,
                                      left: 10,
                                      child: Column(
                                        children: [
                                          Text(
                                            'Sat',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black
                                                    .withOpacity(0.4)),
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            '07',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                  115,
                                                  122,
                                                  191,
                                                  1,
                                                ),
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 226, 255, 1),
                          ),
                          child: Center(
                              child: Text(
                            '04.00 PM',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(98, 120, 169, 1)),
                          )),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 226, 255, 1),
                          ),
                          child: Center(
                              child: Text(
                            '04.00 PM',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(98, 120, 169, 1)),
                          )),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 226, 255, 1),
                          ),
                          child: Center(
                              child: Text(
                            '04.00 PM',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(98, 120, 169, 1)),
                          )),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 75,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 226, 255, 1),
                          ),
                          child: Center(
                              child: Text(
                            '04.00 PM',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(98, 120, 169, 1)),
                          )),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    height: 75,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(217, 226, 255, 1),
                          ),
                          child: Center(
                              child: Text(
                            '04.00 PM',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(98, 120, 169, 1)),
                          )),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 55, //height of button
                width: 350, //width of button
                child: Container(
                  height: 55, //height of button
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(158, 106, 205, 1),
                            Color.fromRGBO(105, 115, 223, 1),
                          ])),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor:
                            Colors.transparent, //background color of button
                        //border width and color
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            //to set border radius to button
                            borderRadius: BorderRadius.circular(30)),
                        padding:
                            EdgeInsets.all(20) //content padding inside button
                        ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                          AppointmentBooked.routeNamed,
                          arguments: BookValue.id);
                    },
                    child: Text(
                      "Appointment",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
