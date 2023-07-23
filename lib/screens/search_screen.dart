import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threads/utils/constants.dart';

import '../widgets/user_search_widget.dart';

class Search extends StatelessWidget {
  const Search({super.key});

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
              const Text(
                'Search',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 14,
              ),
              CupertinoTextField(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(6),
                ),
                autocorrect: true,
                placeholder: 'Search',
                placeholderStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, indext) {
                  return userSearchWidget(
                    isVerified: false,
                    userFollowers: '800M followers',
                    userImage: Constants.pp,
                    userName: 'Mohil Bansal',
                    userStatus: 'MOHIL BANSAL',
                    isFollowed: false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
