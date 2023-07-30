import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/feed_widget.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: CupertinoPageScaffold(
        // backgroundColor: Colors.black,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Colors.transparent,
          middle: Image(
            image: AssetImage(
              Constants.thread,
            ),
          ),
        ),
        resizeToAvoidBottomInset: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              return feedWidget(
                  context: context,
                  image: const AssetImage(Constants.thread),
                  userName: 'Flutterizers',
                  isVerified: true,
                  timeStamp: '2h',
                  description: 'LOL !',
                  hasDescription: true,
                  hasImage: true,
                  replyCount: 200,
                  likesCounter: 100);
            },
            itemCount: 2,
          ),
        ),
      ),
    );
    // );
  }
}
