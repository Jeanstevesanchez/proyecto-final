import 'package:flutter/material.dart';

class Sugerencias extends StatelessWidget {
  final String title;
  final String subtitle;
  final String avatar;
  final bool? siguiendo;
  final Function()? onTap;

  const Sugerencias({
    super.key,
    required this.title,
    required this.subtitle,
    required this.avatar,
    this.siguiendo = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/${avatar}seguir.png'),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: ElevatedButton(
          onPressed: onTap,
          child: siguiendo == true
              ? const Icon(Icons.check)
              : const Text('Seguir')),
    );
  }
}
