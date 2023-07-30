import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';
import '../utils/constants.dart';
import 'account_screen.dart';
import 'activity_screen.dart';
import 'feed_screen.dart';
import 'search_screen.dart';
import 'thread_screen.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final List<Widget> _items = [
    const Feed(),
    const Search(),
    const Thread(),
    const Activity(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentIndex = ref.watch(currentIndexProvider.notifier).state;
    return CupertinoPageScaffold(
      child: WillPopScope(
        onWillPop: () async {
          if (currentIndex != 0) {
            // ref.read(currentIndexProvider.notifier).state = 0;
            currentIndex = 0;
            return false;
          }
          return true;
        },
        child: CupertinoTabScaffold(
          backgroundColor: Colors.black,
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house),
              ),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.pencil_outline)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
            ],
            currentIndex: currentIndex,
            onTap: (index) {
              debugPrint(index.toString());
              // ref.read(currentIndexProvider.notifier).state = index;
              currentIndex = index;
              debugPrint(
                  ref.read(currentIndexProvider.notifier).state.toString());
              debugPrint(currentIndex.toString());
            },
          ),
          tabBuilder: ((context, index) {
            return _items[index];
          }),
        ),
      ),
    );
  }
}
