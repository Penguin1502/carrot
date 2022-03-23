import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var topLeft =
    Row(children: [Text("대치동", style: TextStyle(color: Colors.black)), Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),]);

var topRight = Row(
  mainAxisAlignment: MainAxisAlignment.end,
  mainAxisSize: MainAxisSize.min,
  children: [
    GestureDetector(
        child: Icon(Icons.search),
        onTap: () {
          print("Launch Search Bar");
        }),
    Icon(Icons.view_headline),
    Icon(Icons.notifications_outlined)
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Row(children: [const Padding(padding: EdgeInsets.all(5)), topLeft]),
          leadingWidth: 80,
          actions: [
            GestureDetector(
              child: Icon(Icons.search, color: Colors.black),
              onTap: () {
                print("Launch Search Bar");
              }),
            GestureDetector(child: Icon(Icons.view_headline, color: Colors.black),
            onTap: () {
              print("Launch settings");
            }),
            GestureDetector(child: Icon(Icons.notifications_outlined, color: Colors.black),
            onTap:() {
              print("Launch notifications");
            }), Padding(
              padding: EdgeInsets.all(5),
            )],
        ),
        body: SafeArea(
          child: Expanded(
            child: ListView(
              itemExtent: 100,
              children: const <Widget>[
                ListTile(
                  leading: FittedBox(

                    child: Image(
                        image: AssetImage("images/max.jpg"),
                        width: 250,
                        height: 250,
                        fit: BoxFit.fill),
                  ),
                  title: Text('JBL Max'),
                  subtitle: Text("역삼동 * 1분 전"),
                  trailing: Icon(CupertinoIcons.heart),
                ),
                ListTile(
                  leading: FittedBox(
                    child: Image(
                        image: AssetImage("images/max.jpg"),
                        width: 250,
                        height: 250,
                        fit: BoxFit.fill),
                  ),
                  title: Text('Channel Black Classic Phone Holder'),
                  subtitle: Text("Gangnam Nonhyeonddong * 57 seconds ago"),
                  trailing: Icon(CupertinoIcons.heart),
                ),
                ListTile(
                  leading: FittedBox(
                    child: Image(
                        image: AssetImage("images/max.jpg"),
                        width: 250,
                        height: 250,
                        fit: BoxFit.fill),
                  ),
                  title: Text('Channel Black Classic Phone Holder'),
                  subtitle: Text("Gangnam Nonhyeonddong * 57 seconds ago"),
                  trailing: Icon(CupertinoIcons.heart),
                ),
                ListTile(
                  leading: FittedBox(
                    child: Image(
                        image: AssetImage("images/max.jpg"),
                        width: 250,
                        height: 250,
                        fit: BoxFit.fill),
                  ),
                  title: Text('Channel Black Classic Phone Holder'),
                  subtitle: Text("Gangnam Nonhyeonddong * 57 seconds ago"),
                  trailing: Icon(CupertinoIcons.heart),
                ),
                ListTile(
                  leading: FittedBox(
                    child: Image(
                        image: AssetImage("images/max.jpg"),
                        width: 250,
                        height: 250,
                        fit: BoxFit.fill),
                  ),
                  title: Text('Channel Black Classic Phone Holder'),
                  subtitle: Text("Gangnam Nonhyeonddong * 57 seconds ago"),
                  trailing: Icon(CupertinoIcons.heart),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.orange,
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          iconSize: 20.0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline), label: 'Community'),
            BottomNavigationBarItem(
                icon: Icon(Icons.gps_fixed_outlined), label: 'Near Me'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "My Carrot")
          ],
          selectedItemColor: Colors.orange,
        ),
      ),
    );
  }
}

