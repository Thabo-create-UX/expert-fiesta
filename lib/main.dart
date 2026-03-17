import 'package:flutter/material.dart';
import 'views/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Profile App',

      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.system,

      theme: ThemeData(

        // Background
        scaffoldBackgroundColor: Colors.grey.shade100,

        // Font
        fontFamily: 'Georgia',

        // AppBar Theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 3,
        ),

        // Text Theme
        textTheme: const TextTheme(

          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),

          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),

        ),

        // Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ElevatedButton.styleFrom(

            backgroundColor: Colors.deepPurple,

            foregroundColor: Colors.white,

            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 12,
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),

          ),
        ),

        // Input Fields Theme
        inputDecorationTheme: InputDecorationTheme(

          filled: true,

          fillColor: Colors.white,

          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10),

          ),

        ),

      ),

      home: const ProfilePage(),

    );
  }
}
