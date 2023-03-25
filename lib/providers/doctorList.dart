import 'package:flutter/foundation.dart';

class Doctor with ChangeNotifier {
  late final String id;
  final String name;
  final String subTitle;
  final String hospitalName;
  final String Location;
  final double price;
  final String time;
  final String imageUrl;
  final String description;

  Doctor({
    required this.id,
    required this.name,
    required this.subTitle,
    required this.hospitalName,
    required this.Location,
    required this.price,
    required this.time,
    required this.imageUrl,
    required this.description,
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
        description:
            'A doctorate is any qualification that awards a doctoral degree. In order to qualify for one you need to produce advanced work that makes a significant new contribution to knowledge in your field. Doing so earns you the title'),
    Doctor(
      id: '2',
      name: 'Dr. David Brayant',
      subTitle: 'Heart Specialist',
      hospitalName: 'St Thomas Hospital',
      Location: 'London',
      price: 450,
      time: '10:30AM to 02:30PM',
      imageUrl:
          'https://png2.cleanpng.com/sh/0cf54120ca11aa210808c2764634edd4/L0KzQYm3VMA1N6V8j5H0aYP2gLBuTgBpgaRue9tqbj3xhcP6if5oNZlqed59aD3mccPsTfhwe6FujNN1LYTrdX7rjBN1d6MyTdNsNUTkdYeAg8VibWozTKkCMEa2Q4O4VcIzQGgASqIBNUC8RHB3jvc=/kisspng-physician-nursing-health-care-hospital-the-doctor-5ac54ae67c5ae9.4770633215228792065094.png',
      description:
          'A doctor is responsible for all sides of care of a patient. They diagnose, educate, and treat patients to ensure that they have the best possible care',
    ),
    Doctor(
      id: '3',
      name: 'Dr. Thiruvenkadam',
      subTitle: 'Lunch Specialist',
      hospitalName: 'Care Hospital',
      Location: 'Uk',
      price: 750,
      time: '10:30AM to 02:30PM',
      imageUrl:
          'https://png2.cleanpng.com/sh/0cf54120ca11aa210808c2764634edd4/L0KzQYm3VMA1N6V8j5H0aYP2gLBuTgBpgaRue9tqbj3xhcP6if5oNZlqed59aD3mccPsTfhwe6FujNN1LYTrdX7rjBN1d6MyTdNsNUTkdYeAg8VibWozTKkCMEa2Q4O4VcIzQGgASqIBNUC8RHB3jvc=/kisspng-physician-nursing-health-care-hospital-the-doctor-5ac54ae67c5ae9.4770633215228792065094.png',
      description:
          'A doctor is responsible for all sides of care of a patient. They diagnose, educate, and treat patients to ensure that they have the best possible care',
    ),
  ];
  List<Doctor> get doctItem {
    return [..._doctItem];
  }
}
