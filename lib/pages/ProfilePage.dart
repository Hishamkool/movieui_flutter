import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scrollContainer extends StatelessWidget {
  final IconData? leadingIcon;
  final String listTitle;

  scrollContainer(
      {Key? key, required this.leadingIcon, required this.listTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Color(0xFF24223a), borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        onTap: () {},
        leading: CircleAvatar(
          backgroundColor: Color(0xFF24223a),
          child: Icon(
            leadingIcon,
            color: Color(0xFFa09faa),
          ),
        ),
        title: Text(
          listTitle,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }
}

class MovieappProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24223A),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2nrx0oKNIWcjDbq5RimIXN6eHzgl2T30BMw&usqp=CAU'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),

            Center(
              child: ListTile(
                title: Center(
                    child: Text(
                  'Muhammed Hisham',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
                subtitle: Center(
                    child: Text(
                  '@hishamkoool',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )),
              ),
            ),

            //icons below profile
            IntrinsicHeight(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(left: 10, right: 10, top: 45),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0x400d0b25)),
                // height: 100,
                // height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  children: [
                    scrollContainer(
                      leadingIcon: Icons.person_2_outlined,
                      listTitle: 'My profile',
                    ),
                    // SizedBox(height: 10,),
                    scrollContainer(
                      leadingIcon: Icons.notifications_none,
                      listTitle: 'Notifications',
                    ),
                    // SizedBox(height: 10,),
                    scrollContainer(
                      leadingIcon: Icons.history,
                      listTitle: 'history',
                    ),
                    // SizedBox(height: 10,),
                    scrollContainer(
                      leadingIcon: Icons.subscriptions_outlined,
                      listTitle: 'Subscriptions',
                    ),
                    // SizedBox(height: 10,),
                    scrollContainer(
                      leadingIcon: Icons.settings,
                      listTitle: 'Settings',
                    ),
                    // SizedBox(height: 10,),
                    scrollContainer(
                      leadingIcon: Icons.help_outline,
                      listTitle: 'Help',
                    ),
                    scrollContainer(
                      leadingIcon: Icons.logout,
                      listTitle: 'Logout',
                    ),
                    // SizedBox(height: 10,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
