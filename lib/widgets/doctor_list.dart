import 'package:doctor/providers/doctorList.dart';
import 'package:doctor/screens/doctor_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    final doctorId = Provider.of<DoctorItem>(context);
    final docList = doctorId.doctItem;
    return ListView.builder(
      itemCount: docList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) => ChangeNotifierProvider(
        create: (context) => docList[index],
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                      DoctorInformationScreen.routeNamed,
                      arguments: docList[index].id);
                },
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 30,
                          child: Container(
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(104, 114, 222, 1),
                            ),
                            child: Image.network(
                              docList[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 125),
                          child: Text(
                            docList[index].name,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 125),
                          child: Text(
                            docList[index].subTitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 62, left: 125),
                          child: Text(
                            docList[index].hospitalName,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 78, left: 125),
                          child: Icon(
                            Icons.location_on,
                            color: Color.fromRGBO(104, 114, 222, 1),
                            size: 12,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 78, left: 143),
                          child: Text(
                            docList[index].Location,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110, left: 30),
                          child: Icon(
                            Icons.access_time_sharp,
                            color: Color.fromRGBO(158, 106, 205, 1),
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 115, left: 60),
                          child: Text(
                            docList[index].time,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 115, left: 225),
                          child: Text(
                            'Clinic Fees: ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 111, left: 290),
                          child: Text(
                            '\$${docList[index].price.toString()}',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(104, 114, 222, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
