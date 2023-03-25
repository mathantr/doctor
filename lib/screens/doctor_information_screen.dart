import 'package:doctor/providers/doctorList.dart';
import 'package:doctor/screens/booking_screen.dart';
import 'package:doctor/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorInformationScreen extends StatelessWidget {
  const DoctorInformationScreen({super.key});

  static const routeNamed = '/doctorinformation';

  @override
  Widget build(BuildContext context) {
    final doctorInf = ModalRoute.of(context)!.settings.arguments as String;

    final doctInf = Provider.of<DoctorItem>(context)
        .doctItem
        .firstWhere((element) => element.id == doctorInf);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          color: Color.fromRGBO(107, 115, 194, 1),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3945/3945664.png'),
                color: Color.fromRGBO(107, 115, 194, 1),
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(105, 115, 225, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 25, left: 30),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new NetworkImage(doctInf.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(217, 226, 225, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50.0,
                            left: 150,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                doctInf.name,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Text(
                                  'View Profile',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.6)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Appointment Info',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(216, 225, 254, 1),
                          ),
                          child: Icon(
                            Icons.calendar_today_outlined,
                            color: Color.fromRGBO(101, 108, 162, 1),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        '23.03.2023',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(101, 108, 162, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(216, 225, 254, 1),
                          ),
                          child: Icon(
                            Icons.query_builder,
                            color: Color.fromRGBO(101, 108, 162, 1),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        '10:30AM - 2:30PM',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(101, 108, 162, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(216, 225, 254, 1),
                          ),
                          child: Icon(
                            Icons.business,
                            color: Color.fromRGBO(101, 108, 162, 1),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 20,
                      ),
                      child: Text(
                        'Office Visit',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(101, 108, 162, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: Text(
                        'Notes',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          doctInf.description,
                          style: TextStyle(
                              height: 2, color: Colors.black.withOpacity(0.4)),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 55, //height of button
                      width: 175, //width of button
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.white, //background color of button
                            side: BorderSide(
                                width: 3,
                                color: Color.fromRGBO(
                                    101, 108, 162, 1)), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(
                                20) //content padding inside button
                            ),
                        onPressed: () {
                          Navigator.of(context).pop(HomeScreen);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Color.fromRGBO(101, 108, 162, 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 55, //height of button
                      width: 175, //width of button
                      child: Container(
                        height: 55, //height of button
                        width: 175,
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
                              shadowColor: Colors
                                  .transparent, //background color of button
                              //border width and color
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              padding: EdgeInsets.all(
                                  20) //content padding inside button
                              ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                                BookingScreen.routeNamed,
                                arguments: doctInf.id);
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
