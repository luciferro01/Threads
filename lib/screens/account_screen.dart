import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threads/utils/constants.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //App Bar
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.globe,
                    color: Colors.white,
                    // size: 26,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        CupertinoIcons.list_bullet_indent,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //Account Info

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Flutterizers',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Flutterizers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 6),
                            child: const Text(
                              'threads.net',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    child: Image(
                      image: AssetImage(Constants.thread),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),

              // const SizedBox(
              //   height: 8,
              // ),
              const Text(
                '0 Followers',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 36,
                      padding: const EdgeInsets.all(0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(
                            width: 1,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              color: Colors.blue,
                              style: BorderStyle.solid,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 36,
                      padding: const EdgeInsets.all(0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(
                            width: 1,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              color: Colors.blue,
                              style: BorderStyle.solid,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 6,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Share Profile',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // CupertinoTabScaffold(tabBar: tabBar, tabBuilder: tabBuilder)
              // CupertinoTabBar(items: [
              //   BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Te'),
              //   BottomNavigationBarItem(icon: Icon(Icons.abc))
              // ])
            ],
          ),
        ),
      ),
    );
  }
}
