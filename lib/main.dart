import 'package:flutter/material.dart';
import 'package:pr_1_3/screens/For_you.dart';
import 'package:pr_1_3/screens/all_information_page.dart';
import 'package:pr_1_3/screens/top_charts.dart';

void main() {
  runApp(
    PlayStore(),
  );
}

class PlayStore extends StatefulWidget {
  const PlayStore({Key? key}) : super(key: key);

  @override
  State<PlayStore> createState() => _PlayStoreState();
}

class _PlayStoreState extends State<PlayStore>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  PageController pageController = PageController();

  GlobalKey<FormState> keys = GlobalKey<FormState>();

  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 4);
  }

  int Index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'info' : (context) => information(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: keys,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Search for apps and games",
                  suffixIcon: Icon(Icons.mic),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          bottom: TabBar(
            controller: tabController,
            isScrollable: true,
            onTap: (val) {
              setState(() {
                pageController.animateToPage(val,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              });
            },
            indicatorColor: Colors.green,
            tabs: [
              Tab(
                child: Text(
                  "For you",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Tab(
                child: Text(
                  "Top Charts",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Tab(
                child: Text(
                  "Kids",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Tab(
                child: Text(
                  "Events",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.mic,
          //       color: Colors.grey,
          //     ),
          //   ),
          //   // Center(
          //   //   child: Switch(
          //   //     value: Global.ios,
          //   //     onChanged: (val) {
          //   //       Global.ios = val;
          //   //       Navigator.of(context).pushAndRemoveUntil(
          //   //           MaterialPageRoute(
          //   //             builder: (context) => const PlayStore(),
          //   //           ),
          //   //           (route) => false);
          //   //     },
          //   //   ),
          //   // ),
          // ],
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (val) {
            setState(() {
              tabController.animateTo(val);
            });
          },
          children: [
            foryou(),
            topcharts(),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: Index,
          onTap: (val) {
            setState(() {
              Index = val;
              tabController;
              tabController.animateTo(val);
              pageController;
              pageController.animateToPage(val,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_esports_outlined, color: Colors.grey),
              label: 'Games',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view_rounded,
                color: Colors.grey,
              ),
              label: 'Apps',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation_outlined,
                color: Colors.grey,
              ),
              label: 'Movies & TV',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book_sharp,
                color: Colors.grey,
              ),
              label: 'Books',
            ),
          ],
        ),
      ),
    );
  }
}
