import 'dart:io';
import 'package:flutter/material.dart';
import 'package:minitv/home/main_screen.dart';
import 'package:minitv/webview/webview_screen.dart';
import 'main/global.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:device_info_plus/device_info_plus.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();


  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  //   runApp(const MyApp());
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Amazon MiniTV',
        scaffoldMessengerKey: snackbarKey,
        // home: const HomeScreen(),
        initialRoute: '/',
        theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
    ),
    routes: {
    '/': (context) => const MainScreen(),
    }
    );
}
}

