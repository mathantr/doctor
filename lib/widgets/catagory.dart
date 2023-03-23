import 'package:doctor/providers/catagory_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Catagory extends StatelessWidget {
  const Catagory({super.key});

  @override
  Widget build(BuildContext context) {
    final catId = Provider.of<CatagoryItem>(context);
    final cat = catId.items;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 30),
              child: Text(
                'Catagory',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 125,
              child: ListView.builder(
                itemCount: cat.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ChangeNotifierProvider(
                  create: (context) => cat[index],
                  child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 25),
                      child: Stack(
                        children: [
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(158, 106, 205, 1),
                                  Color.fromRGBO(105, 115, 223, 1),
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: ImageIcon(
                                        NetworkImage(cat[index].imagUrl),
                                        color: Colors.white,
                                        size: 55,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100, left: 20),
                            child: Text(
                              cat[index].title,
                              style: TextStyle(
                                  color: Color.fromRGBO(105, 115, 223, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
