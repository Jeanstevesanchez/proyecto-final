import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Gratificación Instantanea',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.pink,
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0.0,
            centerTitle: true,
            toolbarHeight: 48.0,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        home: const SplashPage());
  }
}
