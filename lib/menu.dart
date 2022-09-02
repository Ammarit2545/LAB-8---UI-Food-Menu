import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodList = [
    [
      "https://image.shutterstock.com/image-illustration/gold-no1-emblem-260nw-340330580.jpg",
      280
    ],
    [
      "https://image.shutterstock.com/image-illustration/gold-no1-emblem-260nw-340330580.jpg",
      300
    ],
    [
      "https://image.shutterstock.com/image-illustration/gold-no1-emblem-260nw-340330580.jpg",
      230
    ],
    [
      "https://image.shutterstock.com/image-illustration/gold-no1-emblem-260nw-340330580.jpg",
      290
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodList.length,
      itemBuilder: (_, index) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
            height: 100,
            width: double.infinity,
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(foodList[index][0]),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${foodList[index][0]}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " ${foodList[index][1]} B",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  //fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.orangeAccent,
                    label: Text(
                      "Order Now",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                /*Positioned(
                  bottom: 0,
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    color: Colors.red,
                    width: 30,
                    height: 30,
                  ),
                ),*/
              ],
            ),
          ),
        );
      },
    );
  }
}
