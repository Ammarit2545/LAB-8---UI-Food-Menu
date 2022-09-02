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
    ["https://i.ytimg.com/vi/1oBv9S8QV8k/maxresdefault.jpg", 300],
    ["https://i.ytimg.com/vi/hN4EFQkgnAo/maxresdefault.jpg", 230],
    ["https://i.ytimg.com/vi/1oBv9S8QV8k/maxresdefault.jpg", 290],
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
                Positioned(
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
