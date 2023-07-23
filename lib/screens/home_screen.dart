import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'account_screen.dart';
import 'activity_screen.dart';
import 'feed_screen.dart';
import 'search_screen.dart';
import 'thread_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> _items = [
    const Feed(),
    const Search(),
    const Thread(),
    const Activity(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: const CupertinoNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   middle: Image(
      //     image: AssetImage(
      //       Constants.thread,
      //     ),
      //   ),
      // ),
      child: CupertinoTabScaffold(
        backgroundColor: Colors.black,
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.house)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.pencil_outline)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
          ],
        ),
        tabBuilder: ((context, index) {
          return _items[index];
        }),
      ),
    );
  }
}
