import 'package:doctor/providers/catagory_provider.dart';
import 'package:doctor/providers/doctorList.dart';
import 'package:doctor/screens/Appointment_booked.dart';
import 'package:doctor/screens/booking_screen.dart';
import 'package:doctor/screens/doctor_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CatagoryItem(),
        ),
        ChangeNotifierProvider(
          create: (context) => DoctorItem(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        ),
        home: HomeScreen(),
        routes: {
          DoctorInformationScreen.routeNamed: (context) =>
              DoctorInformationScreen(),
          BookingScreen.routeNamed: (context) => BookingScreen(),
          AppointmentBooked.routeNamed: (context) => AppointmentBooked(),
        },
      ),
    );
  }
}
