import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/foundation/key.dart' show Key;
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _incrementCounter1() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        _counter = 0;
      }
    });
  }

  List<int> total = const [97, 98, 99, 100];

  List<List<dynamic>> foodList = [
    [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/1200px-RedDot_Burger.jpg",
      "Southwest Turkey Burker With Wango-Chili Guacamole",
      280
    ],
    [
      "https://media.istockphoto.com/photos/key-lime-pie-picture-id176753451?k=20&m=176753451&s=612x612&w=0&h=UD949OL3t6Ky_OjlWQct9YAl-LnTrF5fN83ZpmoXwHE=",
      "Key lime pie",
      300
    ],
    [
      "https://media.istockphoto.com/photos/organic-fried-tater-tots-picture-id454241067?k=20&m=454241067&s=612x612&w=0&h=Camnb1gjh9lfzt_KIbXKyiP4_c4Bo7qhquktCCyi59s=",
      "Tater tots",
      230
    ],
    [
      "https://m.media-amazon.com/images/I/81Nb+-kTEpL._SL1240_.jpg",
      "San Francisco sourdough bread",
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
            height: 120,
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
                              "${foodList[index][1]}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              " ${foodList[index][2]} B",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 0,
                            ),
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              backgroundColor: Colors.green,
                              tooltip: ' + ',
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    backgroundColor: Colors.orangeAccent,
                    label: Text('Total of Food : $_counter',
                        style: Theme.of(context).textTheme.headline4),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: _incrementCounter1,
                    tooltip: ' - ',
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
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
