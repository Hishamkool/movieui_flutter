import 'package:flutter/material.dart';
import 'package:movieapp/SavedPage.dart';
import 'package:movieapp/styles/textstyle.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // List navigateToPages = [
  //   Center(
  //     child: Card(
  //       child: Text('Home Page under development'),
  //     ),
  //   ),
  //   Center(
  //     child: Card(
  //       child: Text('Search Page under development'),
  //     ),
  //   ),
  //   MovieAppSavedPage(),
  //   Center(
  //     child: Card(
  //       child: Text('Downloads Page under development'),
  //     ),
  //   ),
  //   Center(
  //     child: Card(
  //       child: Text('Account Page under development'),
  //     ),
  //   ),
  // ];
  //
  // void _onTapedFunction(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  //
  // int _selectedIndex = 1;

  List recentSearch = [
    'marvel',
    'captain america',
    'thor',
    'jay jay he',
    'neelakasham pachakadal ',
    'npcb',
    'dulquer salman'
  ];

  List popularMovies = [
    'assets/images/English/Trolls.jpg',
    'assets/images/English/Run-Rabbit-Run.jpg',
    'assets/images/English/Next-Goal-Wins.jpg',
    'assets/images/English/Joy-Ride.jpg',
    'assets/images/English/Fast-X.jpg',
    'assets/images/English/Reality.jpg',
    'assets/images/English/Sanctuary.jpg',
    'assets/images/English/Wonka.jpg',
  ];

  List malayalamMovies = [
    'assets/images/Malayalam/Higuita.jpg',
    'assets/images/Malayalam/iratta.jpg',
    'assets/images/Malayalam/kotha.jpg',
    'assets/images/Malayalam/Ram.jpg',
    'assets/images/Malayalam/Live.jpg',
    'assets/images/Malayalam/pathan.jpg',
    'assets/images/Malayalam/SulaikhaManzil.jpg',
    'assets/images/Malayalam/Thankam.jpg',
    'assets/images/Malayalam/Thuramukham.jpg',
    'assets/images/Malayalam/Vellaripattanam.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            toolbarHeight: 70,
            backgroundColor: Colors.transparent,
            title: Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.start,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                )),
          ),

          //--- Recent Search box
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recent Searches',
                        style: CustomTextStyles.headingStyle,
                      ),
                    ),
                  ),

                  //____Recent Searches
                  Wrap(
                    direction: Axis.horizontal,
                    // alignment: WrapAlignment.start,
                    runSpacing: 10,
                    spacing: 10,
                    children: recentSearch.map((searchData) {
                      return IntrinsicWidth(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF38364c))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white60,
                                  ),
                                  Text(
                                    searchData,
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  // Popular Movies
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Popular',
                        style:
                            CustomTextStyles.headingStyle.merge(TextStyle())),
                  )
                  //for additional styling along with the defined styles in the textstyle.dart file that i created
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 190,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: popularMovies.map((popularMVS) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(popularMVS),
                                fit: BoxFit.cover),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 25, bottom: 10),
                child: Text('Malyalam',
                    style: CustomTextStyles.headingStyle.merge(TextStyle())),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 190,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: malayalamMovies.map((malayalamMVS) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(malayalamMVS),
                                fit: BoxFit.cover),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Color(0xFF24223A),
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.lightBlueAccent,
      //   unselectedItemColor: Colors.grey,
      //   onTap: _onTapedFunction,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
      //     BottomNavigationBarItem(icon: Icon(Icons.save), label: 'Saved'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.download), label: 'Downloads'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      //   ],
      // ),
    );
  }
}
