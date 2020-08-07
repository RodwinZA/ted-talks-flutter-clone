import 'package:flutter/material.dart';
import 'package:ted_talks_clone/components/my_bottom_nav.dart';
import 'package:ted_talks_clone/screens/most_viewed_videos_screen.dart';
import 'package:ted_talks_clone/screens/newest_videos_screen.dart';
import 'package:ted_talks_clone/screens/trending_videos_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNav(),
      body: Container(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (context, value) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  floating: true,
                  pinned: true,
                  snap: false,
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'TED ',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900),
                        ),
                        TextSpan(
                          text: 'Talks',
                          style: TextStyle(color: Colors.red, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(
                        Icons.cast,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {
                        print('Casting To Android');
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {
                        print('Casting To Android');
                      },
                    ),
                  ],
                  bottom: TabBar(
                    isScrollable: false,
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.grey[500],
                    labelPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                    indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3.0,
                    tabs: [
                      Tab(
                        text: 'Newest',
                      ),
                      Tab(
                        text: 'Trending',
                      ),
                      Tab(
                        text: 'Most Viewed',
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                NewestVideosScreen(),
                TrendingVideosScreen(),
                MostViewedVideosScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
