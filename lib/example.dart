import 'package:flutter/material.dart';
import 'package:movieapp/styles/textstyle.dart';

void main() {
  runApp(MaterialApp(
    home: SearchPageexample(),
  ));
}

class SearchPageexample extends StatelessWidget {
  SearchPageexample({super.key});

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

  List<String> recentSearch = [
    'marvel',
    'captain america',
    'thor',
    'jay jay he',
    'neelakasham pachakadal',
    'npcb',
    'dulquer salman',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Text('example'),
            // ... (your existing SliverAppBar)
          ),

          //--- Recent Search box
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, top: 20, bottom: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recent Searches',
                        style: CustomeTextStyles.headingStyle,
                      ),
                    ),
                  ),
                  // Wrap(
                  //   direction: Axis.horizontal,// Wrap with Wrap widget
                  //   spacing: 10, // Spacing between items
                  //   children: recentSearch.map((e) {
                  //     return ClipRRect(
                  //       borderRadius: BorderRadius.circular(10),
                  //       child: TextButton(
                  //         style: ButtonStyle(
                  //           backgroundColor: MaterialStateProperty.all(
                  //               Color(0xFF38364c)),
                  //         ),
                  //         onPressed: () {},
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             children: [
                  //               Icon(Icons.search),
                  //               Text(e),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     );
                  //   }).toList(),
                  // ),
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    runSpacing: 10,
                    spacing: 10,
                    children: recentSearch.map((searchData) {
                      return IntrinsicWidth(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF38364c)),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.history),
                                  SizedBox(width: 5),
                                  Text(
                                    searchData,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),

          // Use SliverList with SingleChildScrollView for horizontal scrolling
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 200, // Set the desired height
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    // Set the scroll direction to horizontal
                    child: Row(
                      children: popularMovies.map((movie) {
                        return Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          // Add horizontal spacing
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(movie),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
              childCount: 1, // There's only one SliverList in this case
            ),
          ),

          // Other slivers...
        ],
      ),

      // ... (your existing SliverList code)
    );
  }
}
