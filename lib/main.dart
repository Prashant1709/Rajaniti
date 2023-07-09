import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rajaniti/Screens/Splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sulpherpoint',
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),      debugShowCheckedModeBanner: true,
    );
  }
}