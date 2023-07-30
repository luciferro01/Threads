import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: Colors.black,
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
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        child: Image(
                          image: AssetImage(
                            Constants.thread,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 4),
                        // height: double.infinity,
                        height: 400,
                        width: 1,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Flutterizers',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Icon(
                                  CupertinoIcons.checkmark_seal_fill,
                                  size: 15,
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  '20m',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showCupertinoModalPopup(
                                      barrierColor: Colors.transparent,
                                      semanticsDismissible: true,
                                      useRootNavigator: true,
                                      barrierDismissible: true,
                                      context: context,
                                      builder: (context) {
                                        return CupertinoActionSheet(
                                          actions: [
                                            CupertinoActionSheetAction(
                                              onPressed: () {
                                                // Handle action 1
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 40,
                                                alignment: Alignment.center,
                                                // padding:
                                                //     EdgeInsets.only(left: 20),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      6,
                                                    ),
                                                    color:
                                                        Colors.grey.shade900),
                                                child: const Text(
                                                  'Mute',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            CupertinoActionSheetAction(
                                              onPressed: () {
                                                // Handle action 1
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                'Hide',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                            CupertinoActionSheetAction(
                                              isDestructiveAction: true,
                                              onPressed: () {
                                                // Handle action 1
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Block'),
                                            ),
                                            CupertinoActionSheetAction(
                                              isDestructiveAction: true,
                                              onPressed: () {
                                                // Handle action 2
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Report'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: const Icon(
                                    CupertinoIcons.ellipsis,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        //Content of Post
                        const Text(
                          'LOL .',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 315,
                          width: 315,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              CupertinoIcons.heart,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              CupertinoIcons.chat_bubble,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              CupertinoIcons.arrow_2_squarepath,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              CupertinoIcons.share,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '20 replies',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: Colors.grey.shade500,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '20 replies',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
