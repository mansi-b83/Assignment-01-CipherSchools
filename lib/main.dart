
import 'package:assignment/AppStateNotifier.dart';
import 'package:assignment/AppTheme.dart';
import 'package:assignment/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'coursepage.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(
    // ChangeNotifierProvider
    ChangeNotifierProvider<AppStateNotifier>(
      create: (_) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          // darkTheme: ThemeData(
          //   primarySwatch: Colors.green,
          // ),
          // title: 'Flutter Demo',
          // theme: ThemeData(
          //
          //   // This is the theme of your application.
          //   //
          //   // Try running your application with "flutter run". You'll see the
          //   // application has a blue toolbar. Then, without quitting the app, try
          //   // changing the primarySwatch below to Colors.green and then invoke
          //   // "hot reload" (press "r" in the console where you ran "flutter run",
          //   // or simply save your changes to "hot reload" in a Flutter IDE).
          //   // Notice that the counter didn't reset back to zero; the application
          //   // is not restarted.
          //   primarySwatch: Colors.blue,
          // ),
          home: BottomNav(state: appState.isDarkModeOn),
        );
      },
    );
  }
}

