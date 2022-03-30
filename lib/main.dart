import 'package:flutter/material.dart';
import 'package:zupay_assigment/config/app_router.dart';
import 'package:zupay_assigment/screen/home_screen.dart';
import 'package:zupay_assigment/screen/screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: const HomeScreen(),
    );
  }
}
