import 'package:fastfoodshopping/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color primaryFontColor =  Color(0xff0B090A);
const Color secondaryFontColor =  Color(0xff161A1D);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xffA4161A),
          background: Color(0xffF5F3F4),
          secondary: Color(0xff161A1D),
          onSecondary: Colors.white,
          onPrimary: Color(0xffffffff),
          onBackground: Color(0xff0B090A),
          surface: Color(0xffBA181B),
          onSurface: Color(0xffffffff),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
