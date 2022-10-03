import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/pages/image.dart';

class Publicacion extends StatelessWidget {
  final String name;
  final String numMeGusta;
  final String description;
  final String numComentarios;
  final String image;
  final String avatarImage;
  final bool? favorite;
  final Function()? longPressed;

  const Publicacion({
    super.key,
    required this.name,
    required this.numMeGusta,
    required this.description,
    required this.numComentarios,
    required this.image,
    required this.avatarImage,
    this.favorite = false,
    this.longPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  height: 32.0,
                  width: 32.0,
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
                      'assets/${avatarImage}avatar.png',
                      height: 2.0,
                      width: 2.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
        const SizedBox(height: 8.0),
        InkWell(
          onLongPress: longPressed,
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ImagePage(image: 'assets/${image}public.png'))),
          child: Hero(
              tag: 'assets/${image}public.png',
              child: Image.asset('assets/${image}public.png')),
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                favorite == true
                    ? const Icon(Icons.favorite, color: Colors.red)
                    : const Icon(Icons.favorite_outline),
                const SizedBox(width: 8.0),
                const Icon(Icons.comment_outlined),
                const SizedBox(width: 8.0),
                const Icon(Icons.send),
              ],
            ),
            const Icon(Icons.label_outline)
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          '$numMeGusta Me gusta',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 8.0,
            ),
            Text(description),
          ],
        ),
        Text('$numComentarios comentarios'),
      ],
    );
  }
}
