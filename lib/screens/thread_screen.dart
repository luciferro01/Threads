import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threads/utils/constants.dart';

class Thread extends StatefulWidget {
  const Thread({super.key});

  @override
  State<Thread> createState() => _ThreadState();
}

class _ThreadState extends State<Thread> {
  final TextEditingController textController = TextEditingController();
  int _numberOfLines = 1;
  int _characterCount = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   textController.addListener(_onTextChanged);
  // }

  // @override
  // void dispose() {
  //   textController.removeListener(_onTextChanged);
  //   textController.dispose();
  //   super.dispose();
  // }

  void _onTextChanged() {
    final text = textController.text;
    final lines = text.split('\n');

    setState(() {
      // _characterCount = text.length;
      _characterCount = textController.text.length;
      _numberOfLines = lines.length;
    });

    // 😃😶‍🌫️ Another Way to Handle the Maximum Number of Allowed Characters.
    // int maxCharacterLimit = 500;
    // if (_characterCount > maxCharacterLimit) {
    //   textController.value = TextEditingValue(
    //     text: textController.text.substring(0, maxCharacterLimit),
    //     selection: TextSelection.collapsed(offset: maxCharacterLimit),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: true,
          leading: Row(
            children: [
              Icon(
                CupertinoIcons.clear_thick,
                color: Colors.white,
                size: 22,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'New Thread',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 58,
            left: 12,
            right: 12,
            bottom: 12,
          ),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      child: Image(
                        image: AssetImage(Constants.thread),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      constraints: BoxConstraints(
                        minHeight: _numberOfLines * 30,
                        maxHeight: double.infinity,
                      ),
                      // height: 200,
                      color: Colors.grey.shade800,
                      width: 2,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 10,
                      child: Image(
                        image: AssetImage(Constants.thread),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Flutterizers',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          textController.text.isNotEmpty
                              ? CupertinoButton(
                                  child: const Icon(
                                    CupertinoIcons.clear,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      textController.text = '';
                                      _characterCount = 0;
                                    });
                                  })
                              : const SizedBox()
                        ],
                      ),
                      CupertinoTextField(
                        onChanged: (value) {
                          _onTextChanged();
                        },
                        // readOnly: _characterCount > 500 ? true : false,
                        maxLength: 500,
                        controller: textController,
                        cursorColor: Colors.white,
                        maxLines: null,
                        placeholder: 'Start a Thread',
                        placeholderStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                        keyboardAppearance: Brightness.dark,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            CupertinoIcons.paperclip,
                            color: Colors.grey.shade600,
                          ),
                          Text(
                            '$_characterCount/500',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade600,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
