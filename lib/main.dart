import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/landing_page.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

import 'app/sign_in/sign_in_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // remove "name: " when run the app in web. Add name when running the app in android emulator
    name: 'time-tracker-flutter-course',
    options: const FirebaseOptions(
      apiKey: "AIzaSyCHcUyZaarHdOVF_dKWKY5euIpVGKVmzXY",
      appId: "1:290896143419:web:bc8e8235fd77721ac7e81e",
      messagingSenderId: "290896143419",
      projectId: "time-tracker-flutter-cou-1a0fe",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(
        auth: Auth(),
      ),
    );
  }
}
