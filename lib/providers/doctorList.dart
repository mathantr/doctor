import 'package:flutter/foundation.dart';

class Doctor with ChangeNotifier {
  final String id;
  final String name;
  final String subTitle;
  final String hospitalName;
  final String Location;
  final double price;
  final String time;
  final String imageUrl;

  Doctor({
    required this.id,
    required this.name,
    required this.subTitle,
    required this.hospitalName,
    required this.Location,
    required this.price,
    required this.time,
    required this.imageUrl,
  });
}

class DoctorItem with ChangeNotifier {
  List<Doctor> _doctItem = [
    Doctor(
      id: '1',
      name: 'Dr.Joseph Chunch',
      subTitle: 'Dental Specialist',
      hospitalName: 'St Bartholomew\'s Hospital',
      Location: 'London',
      price: 300,
      time: '10:30AM to 02:30PM',
      imageUrl:
          'https://www.freepnglogos.com/uploads/doctor-png/png-woman-doctor-transparent-woman-doctor-images-40.png',
    ),
    Doctor(
      id: '2',
      name: 'Mathan',
      subTitle: 'Heart Specialist',
      hospitalName: 'St Bartholomew\'s Hospital',
      Location: 'London',
      price: 300,
      time: '10:30AM to 02:30PM',
      imageUrl:
          'https://www.freepnglogos.com/uploads/doctor-png/png-woman-doctor-transparent-woman-doctor-images-40.png',
    ),
  ];
  List<Doctor> get doctItem {
    return [..._doctItem];
  }
}
