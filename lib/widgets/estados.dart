import 'package:flutter/material.dart';

class Estados extends StatelessWidget {
  final String imageAsset;
  final String name;

  const Estados({
    super.key,
    required this.imageAsset,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(2.0),
          height: 48.0,
          width: 48.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.yellow,
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(256.0),
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/${imageAsset}avatar.png',
              height: 2.0,
              width: 2.0,
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
