import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';

import 'firebase_options.dart';
import 'views/home.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  await initializeProfile();

  runApp(const Atlas());
}

class Atlas extends StatefulWidget {
  const Atlas({super.key});

  @override
  State<Atlas> createState() => _AtlasState();
}

class _AtlasState extends State<Atlas> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Atlas",
      debugShowCheckedModeBanner: false,
      home: Home(profile: activeProfile!),
    );
  }
}