import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/splash_screen.dart';

final currentIndexProvider = StateProvider<int>((ref) => 0);
void main() {
  // Client client = Client();
  // client
  //     .setEndpoint('https://cloud.appwrite.io/v1')
  //     .setProject('64c5f0dbeac184e8ffb6')
  //     .setSelfSigned(status: true); //

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            primaryColor: Colors.white,
            textStyle: TextStyle(color: Colors.white),
          ),
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
