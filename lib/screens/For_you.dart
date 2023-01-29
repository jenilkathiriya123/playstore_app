import 'package:flutter/material.dart';
import 'package:pr_1_3/page/Global.dart';

class foryou extends StatefulWidget {
  const foryou({Key? key}) : super(key: key);

  @override
  State<foryou> createState() => _foryouState();
}

class _foryouState extends State<foryou> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Icon(Icons.arrow_forward, color: Colors.black),
              ),
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Global.Games.map((e) => Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Map<String, dynamic> map = {
                          'image': e['image'],
                          'image2': e['image2'],
                          'image3': e['image3'],
                          'name': e['name'],
                          'rate': e['rate'],
                          'name2': e['name2'],
                          'rew': e['rew'],
                          'down': e['down'],
                          'mb': e['mb'],
                        };
                        Navigator.pushNamed(context, 'info', arguments: map);
                      },
                      child: Container(
                        height: 160,
                        width: 120,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                color: Colors.white,
                                child: Image.asset(
                                  e['image'],
                                  fit: BoxFit.fill,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("${e['name']}"),
                            ),
                            Row(
                              children: [
                                Text("${e['rate']} "),
                                Icon(Icons.star, size: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })).toList(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("New & Updated apps",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                Icon(Icons.arrow_forward, color: Colors.black),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Global.news_games
                  .map((e) => Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Map<String, dynamic> map = {
                              'image': e['image'],
                              'image2': e['image2'],
                              'image3': e['image3'],
                              'name': e['name'],
                              'rate': e['rate'],
                              'name2': e['name2'],
                              'rew': e['rew'],
                              'down': e['down'],
                              'mb': e['mb'],
                            };
                            Navigator.pushNamed(context, 'info',
                                arguments: map);
                          },
                          child: Container(
                            height: 160,
                            width: 120,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.white,
                                    child: Image.asset(
                                      e['image'],
                                      fit: BoxFit.fill,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("${e['name']}"),
                                ),
                                Row(
                                  children: [
                                    Text("${e['rate']} "),
                                    Icon(Icons.star, size: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
                  .toList(),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Multiplayer games",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Icon(Icons.arrow_forward, color: Colors.black),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Global.multi
                  .map((e) => Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Map<String, dynamic> map = {
                              'image': e['image'],
                              'image2': e['image2'],
                              'image3': e['image3'],
                              'name': e['name'],
                              'rate': e['rate'],
                              'name2': e['name2'],
                              'rew': e['rew'],
                              'down': e['down'],
                              'mb': e['mb'],
                            };
                            Navigator.pushNamed(context, 'info',
                                arguments: map);
                          },
                          child: Container(
                            height: 160,
                            width: 120,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 100,
                                    width: 100,
                                    color: Colors.white,
                                    child: Image.asset(
                                      e['image'],
                                      fit: BoxFit.fill,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("${e['name']}"),
                                ),
                                Row(
                                  children: [
                                    Text("${e['rate']} "),
                                    Icon(Icons.star, size: 10),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
