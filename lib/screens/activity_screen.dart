import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threads/widgets/outlined_button_widget.dart';

class Activity extends StatelessWidget {
  Activity({super.key});
  final List<Map<String, dynamic>> activityBars = [
    {'name': 'All', 'onPressed': () {}},
    {'name': 'Follows', 'onPressed': () {}},
    {'name': 'Replies', 'onPressed': () {}},
    {'name': 'Mentions', 'onPressed': () {}},
    {'name': 'Quotes', 'onPressed': () {}},
    {'name': 'Reposts', 'onPressed': () {}},
    {'name': 'Verified', 'onPressed': () {}},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Activity',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 30,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return outlinedButtonWidget(
                      onPressed: activityBars[index]['onPressed'],
                      buttonText: activityBars[index]['name'],
                      width: 90,
                    );
                  },
                  itemCount: activityBars.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
