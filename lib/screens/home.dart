import 'package:doctor/widgets/appbar.dart';
import 'package:doctor/widgets/catagory.dart';
import 'package:doctor/widgets/doctor_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppWidgets(),
              Catagory(),
              SizedBox(
                height: 35,
              ),
              DoctorList(),
            ],
          ),
        ),
      ),
    );
  }
}
