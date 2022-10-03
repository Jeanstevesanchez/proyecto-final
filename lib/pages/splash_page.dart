import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      print('cargando HomePage...');
      //Navigator.pushNamed(context, HomePage.routeName);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white.withOpacity(0.95),
      child: SizedBox(
        height: 128.0,
        width: 128.0,
        child: Image.asset('assets/splash.png'),
      ),
    );
  }
}
