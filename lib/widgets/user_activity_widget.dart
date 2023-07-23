import 'package:flutter/material.dart';

Column userActivityWidget(
    {required String userName,
    required String lastOnlineStatus,
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
                      lastOnlineStatus,
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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {},
              child: const Text(
                'Follow',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
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
