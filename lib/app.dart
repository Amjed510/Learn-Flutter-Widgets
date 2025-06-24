// lib/app.dart
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tebale_app/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // كل إعدادات MaterialApp والثيم موجودة هنا
    return MaterialApp(
      title: "Manage Data",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar', 'SA')],
      locale: const Locale('ar', 'SA'),
      theme: ThemeData(
        primaryColor: const Color(0xFF1E88E5), // A modern blue
        scaffoldBackgroundColor: const Color(
          0xFFF5F5F5,
        ), // Light grey background
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF1E88E5),
          elevation: 0, // Flat appbar for a modern look
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: GoogleFonts.cairo(
            // Using Google Fonts for a modern feel
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        textTheme: GoogleFonts.cairoTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: const Color(0xFF333333), // Dark grey for text
        ),
        cardTheme: CardTheme(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFFFC107), // Accent color
        ),
      ),
      home: const HomeScreen(), // تحديد الشاشة الرئيسية
    );
  }
}
