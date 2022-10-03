import 'package:flutter/material.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccinnar una imaggen'),
      ),
      body: ListView(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.camera_alt, size: 48.0),
                    Text('Cámara'),
                  ],
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.image_search, size: 48.0),
                    Text('Navegar'),
                  ],
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/01public.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/02public.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/00public.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/00my.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/03my.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/04my.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/05my.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 150.0,
                child: Image.asset(
                  'assets/06my.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    
    );
  }
}