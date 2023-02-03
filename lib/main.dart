import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:turkticaret_case/color/app_colors.dart';

import 'firebase_options.dart';
import 'home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      title: "TurkTicaret Case",
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: const HomePage(),
        bottomNavigationBar: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: const Icon(Icons.home_filled), onPressed: () {}),
              IconButton(icon: const Icon(Icons.local_mall), onPressed: () {}),
              IconButton(icon: const Icon(Icons.location_on), onPressed: () {}),
              IconButton(icon: const Icon(Icons.favorite), onPressed: () {}),
              IconButton(icon: const Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
