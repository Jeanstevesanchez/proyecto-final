import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72.0,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Buscar',
            border: OutlineInputBorder(),
          ),
        ),
      ),
      body: Wrap(
        alignment: WrapAlignment.center,
        children: [
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
    );
  }
}
