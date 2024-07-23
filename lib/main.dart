import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';


final kPrimaryColor = Color(0xFF6200EE);
final kSecondaryColor = Color(0xFF03DAC6);
final kBackgroundColor = Color(0xFFF5F5F5);
final kCardColor = Color(0xFFFFFFFF);
final kAppBarBackgroundColor = kPrimaryColor;
final kAppBarForegroundColor = Colors.white;
final kButtonColor = kPrimaryColor;
final kTextColor = Color(0xFF000000);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
     MaterialApp(
         darkTheme: ThemeData.dark().copyWith(
           colorScheme: kDarkColorScheme,
           elevatedButtonTheme: ElevatedButtonThemeData(
             style: ElevatedButton.styleFrom(
               backgroundColor: kDarkColorScheme.primaryContainer,
               foregroundColor: kDarkColorScheme.onPrimaryContainer,
             ),
           ),
         ),
       theme: ThemeData().copyWith(
         useMaterial3: true,
         colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9BEBB4)),
         appBarTheme: const AppBarTheme().copyWith(
           backgroundColor: const Color.fromARGB(255, 85, 91, 255),
         ),
         cardTheme: CardTheme().copyWith(
           color: const Color.fromARGB(255, 108, 169, 255),
           margin: const EdgeInsets.all(10),
         ),
         elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
             backgroundColor: const Color.fromARGB(255, 105, 170, 255),
           ),
         ),
         textTheme: ThemeData().textTheme.copyWith(
           titleLarge: const TextStyle(
             fontWeight: FontWeight.bold,
             color: Colors.black,
             fontSize: 14,
           ),
         ),
       ),
      themeMode: ThemeMode.system,
      home:const Expenses(),
    ),
  );
}