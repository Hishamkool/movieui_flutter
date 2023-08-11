import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/styles/textstyle.dart';

class MovieAppSavedPage extends StatelessWidget {
  List _savedMoviePoster = [
    'assets/images/saved/Captain-America-The-Winter-Soldier.jpg',
    'assets/images/saved/Captain-Marvel.jpg',
    'assets/images/saved/iceAge.jpeg',
    'assets/images/saved/Ecanto 2021.jpg',
    'assets/images/saved/Thor.webp',
  ];
  List _savedMovieTitles = [
    'Captain America: The Winter Soldier',
    'Captain Marvel',
    'The Ice Age: Adventures of Buck World',
    'Ecanto 2021',
    'Thor',
  ];
  List _savedMovieGener = [
    'Action Adventure',
    'Action Adventure',
    'Adventure, Animation',
    'Animation, Comedy',
    'Scify',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF24223A),
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 1,
          backgroundColor: Color(0xFF24223A),
          centerTitle: true,
          title: Text(
            'Saved',
            style: CustomTextStyles.headingStyle,
          ),
          actions: [
            TextButton(
                onPressed: () {

                },
                child: Center(
                    child: Text(
                  "Delete",
                  style: CustomTextStyles.commonTextStyle,
                )))
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                  color: Color(0xFF312E54),
                  // border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              height: 190,
              child: Row(
                children: [
                  //Image
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 162,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(_savedMoviePoster[index]),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  //Title
                  Container(
                    width: 200,
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(children: [
                          Text(
                            _savedMovieTitles[index],
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          _savedMovieGener[index],
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Container(
                          height: 85,
                          width: 150,

                          padding: const EdgeInsets.only(top: 48.0, left: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Text('Watch Now'),
                          ),
                          // child: TextButton(
                          //     style: ButtonStyle(
                          //         backgroundColor:
                          //             MaterialStateProperty.all(Colors.red)),
                          //     onPressed: () {},
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: Text(
                          //         'Watch Now',
                          //         style: TextStyle(
                          //             fontSize: 18, color: Colors.white),
                          //       ),
                          //     )),
                        ),
                      ],
                    ),
                  ),

                  //trailingIcon
                  Spacer(),
                  Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            );
          },
          itemCount: _savedMovieTitles.length,
        ));
  }
}
