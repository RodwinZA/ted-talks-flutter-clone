import 'package:flutter/material.dart';
import 'package:ted_talks_clone/screens/home_screen.dart';
import 'package:ted_talks_clone/screens/most_viewed_videos_screen.dart';
import 'package:ted_talks_clone/screens/newest_videos_screen.dart';
import 'package:ted_talks_clone/screens/trending_videos_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ted Talks Flutter Clone',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        NewestVideosScreen.id: (context) => NewestVideosScreen(),
        TrendingVideosScreen.id: (context) => TrendingVideosScreen(),
        MostViewedVideosScreen.id: (context) => MostViewedVideosScreen(),
      },
    );
  }
}
