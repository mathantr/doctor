import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({super.key});

  static const routeNamed = '/appointment-booked';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: Color.fromRGBO(107, 115, 194, 1),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Appointment Booking Successfully",
              style: new TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(220, 15, 15, 1),
                        Color.fromRGBO(158, 106, 205, 1),
                        Color.fromRGBO(105, 115, 223, 1),

                        //add more color here.
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 350.0, 10.0))),
            ),
            Center(
              child: Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_ssjAlSigs7.json'),
            ),
          ],
        ));
  }
}
