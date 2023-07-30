import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column feedWidget({
  required BuildContext context,
  required AssetImage image,
  required String userName,
  required bool isVerified,
  required String timeStamp,
  required String description,
  required bool hasDescription,
  required bool hasImage,
  required int replyCount,
  required int likesCounter,
  dynamic muteAction,
  dynamic hideAction,
  dynamic blockAction,
  dynamic reportAction,
  dynamic accountAction,
  dynamic likeAction,
  dynamic commentAction,
  dynamic repostAction,
  dynamic shareAction,
}) {
  return Column(
    children: [
      const SizedBox(
        height: 12,
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 20,
                child: Image(
                  image: image,
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
                    Row(
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        isVerified
                            ? const Icon(
                                CupertinoIcons.checkmark_seal_fill,
                                size: 15,
                              )
                            : const SizedBox(),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          timeStamp,
                          style: const TextStyle(
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
                                        muteAction;
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 40,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                            color: Colors.grey.shade900),
                                        child: const Text(
                                          'Mute',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    CupertinoActionSheetAction(
                                      onPressed: () {
                                        hideAction;
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Hide',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    CupertinoActionSheetAction(
                                      isDestructiveAction: true,
                                      onPressed: () {
                                        blockAction;
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Block'),
                                    ),
                                    CupertinoActionSheetAction(
                                      isDestructiveAction: true,
                                      onPressed: () {
                                        reportAction;
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
                hasDescription
                    ? Text(
                        description,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 12,
                ),
                hasImage
                    ? Container(
                        height: 315,
                        width: 315,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.grey.shade700,
                          ),
                        ),
                      )
                    : const SizedBox(),
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
                      "$replyCount replies",
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
                      "$likesCounter likes",
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
      ),
      const SizedBox(
        height: 12,
      ),
      Divider(
        height: 2,
        thickness: 1,
        color: Colors.grey.shade900,
      ),
    ],
  );
}
