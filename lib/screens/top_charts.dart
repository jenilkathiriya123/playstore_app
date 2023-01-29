import 'package:flutter/material.dart';

import '../page/Global.dart';

class topcharts extends StatefulWidget {
  const topcharts({Key? key}) : super(key: key);

  @override
  State<topcharts> createState() => _topchartsState();
}

class _topchartsState extends State<topcharts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 80,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Top Free",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 30,
                  width: 110,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down_outlined),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 30,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "New",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: Global.allgames
                    .map((e) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 40,left: 10),
                               child: Text("${e['no']}"),
                             ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 35),
                              child: Image.asset(
                                e['image'],
                                height: 70,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 25),
                                  child: Text("${e['name']}"),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text("${e['rate']} "),
                                      Icon(Icons.star, size: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
