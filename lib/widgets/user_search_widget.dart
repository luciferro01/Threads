import 'package:flutter/material.dart';
import 'package:threads/widgets/outlined_button_widget.dart';

Column userSearchWidget(
    {required String userName,
    required String userStatus,
    required bool isVerified,
    required String userImage,
    bool isFollowed = false,
    required String userFollowers}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.transparent,
                  radius: 20,
                  child: Image(
                    image: AssetImage(userImage),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      userStatus,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      userFollowers,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            outlinedButtonWidget(
                onPressed: () {},
                buttonText: 'Follow',
                height: 30,
                width: 90,
                borderRadius: 10)
          ],
        ),
      ),
      const Divider(
        thickness: 1,
        color: Colors.white24,
        indent: 48,
        endIndent: 0,
      ),
    ],
  );
}
