
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

          home: BottomNav(),
        );
      },
    );
  }
}

