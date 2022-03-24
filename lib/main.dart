import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.white,
          leadingWidth: 100,
          leading: Row(
              children: [const Padding(padding: EdgeInsets.all(5)), topLeft]),
          actions: [
            GestureDetector(
                child: Icon(Icons.search, color: Colors.black, size: 30),
                onTap: () {
                  print("Launch Search Bar");
                }),
            GestureDetector(
                child: Icon(Icons.view_headline, color: Colors.black, size: 30),
                onTap: () {
                  print("Launch settings");
                }),
            GestureDetector(
                child: Icon(Icons.notifications_outlined,
                    color: Colors.black, size: 30),
                onTap: () {
                  print("Launch notifications");
                }),
            Padding(
              padding: EdgeInsets.all(5),
            )
          ],
        ),
        body: SafeArea(
          child: Expanded(child: AdvancedListView()),
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

//This shouldn't be a variable it changes dynamically (clicks and opens to another page)
var topLeft = Row(children: [
  Text("대치동",
      style: TextStyle(
          color: Colors.black, fontSize: 20, overflow: TextOverflow.clip)),
  Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black, size: 30),
]);

//Basic List View
class BasicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      itemExtent: 100,
      children: const <Widget>[
        ListTile(
          leading: SizedBox(
            child: Image(
                image: AssetImage("images/max.jpg"), fit: BoxFit.fitHeight),
            height: 50,
            width: 50,
          ),
          title: Text("JBL Max Speakers"),
          subtitle: Text("역삼동 * 1분 전"),
          trailing: Icon(CupertinoIcons.heart),
        ),
        ListTile(
          leading: FittedBox(
            child: Image(
                image: AssetImage("images/gucci.jpg"), fit: BoxFit.fitHeight),
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
                width: 50,
                height: 50,
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
                width: 50,
                height: 50,
                fit: BoxFit.fill),
          ),
          title: Text('Channel Black Classic Phone Holder'),
          subtitle: Text("Gangnam Nonhyeonddong * 57 seconds ago"),
          trailing: Icon(CupertinoIcons.heart),
        ),
      ],
    );
  }
}

//these two must match in length
final List<String> ItemTitleEntries = <String>[
  'JBL SoundBar',
  'Channel Phone Holder',
  'Airpod 3rd Generation'
];
final List<String> ItemLocationEntries = <String>[
  'Songdo * 5 Minutes Ago',
  'Gangnam * 57 Seconds Ago',
  'Daerim * 1 Minutes Ago'
];
final List<String> ItemPriceEntries = <String>['\$80', '\$ 1050', '\$ 100'];
List<AssetImage> assetImages = <AssetImage>[AssetImage("images/gucci.jpg"), AssetImage("images/Channelphoneholder.jpg"), AssetImage('images/airpods.jpeg')];

class AdvancedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: ItemTitleEntries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Image(image: AssetImage("images/max.jpg"), height: 50,),
                    fit: BoxFit.fitHeight,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(ItemTitleEntries[index], style: TextStyle(fontSize: 20)),
                        Text(ItemLocationEntries[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 15,
                          ),
                        ),
                        Text(ItemPriceEntries[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(CupertinoIcons.heart),
                            Icon(CupertinoIcons.chat_bubble_text),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ));
        });
  }
}
