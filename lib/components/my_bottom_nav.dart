import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // Type will default to .shifted and needs to be declared as .fixed if
      // you have more than three items in order to display title(s).
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions,
            color: Colors.grey[600],
          ),
          title: Text('Talks', style: TextStyle(color: Colors.grey[600])),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey[600],
          ),
          title: Text('Discover', style: TextStyle(color: Colors.grey[600])),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.headset,
            color: Colors.grey[600],
          ),
          title: Text('Podcasts', style: TextStyle(color: Colors.grey[600])),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.grey[600],
          ),
          title: Text('My TED', style: TextStyle(color: Colors.grey[600])),
        ),
      ],
    );
  }
}
