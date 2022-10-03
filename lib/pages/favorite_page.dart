import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/widgets/sugerencias.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  bool uno = false;
  bool dos = false;
  bool tres = false;
  bool cuatro = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividad'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Icon(
            Icons.favorite_outline,
            size: 64.0,
          ),
          const Text(
              'Aquí verás si alguien indica que le gusta una de tus publicaciones o la comenta',
              textAlign: TextAlign.center),
          const Text(
            'Sugerencias para ti',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Sugerencias(
            avatar: '00',
            title: 'Rubius',
            subtitle: 'OMFG',
            siguiendo: uno,
            onTap: () {
              uno = !uno;
              setState(() {});
            },
          ),
          Sugerencias(
            avatar: '01',
            title: 'Auron',
            subtitle: 'Play',
            siguiendo: dos,
            onTap: () {
              dos = !dos;
              setState(() {});
            },
          ),
          Sugerencias(
            avatar: '02',
            title: 'Fernanfloo',
            subtitle: 'XD',
            siguiendo: tres,
            onTap: () {
              tres = !tres;
              setState(() {});
            },
          ),
          Sugerencias(
            avatar: '03',
            title: 'Dross',
            subtitle: 'Rotzank',
            siguiendo: cuatro,
            onTap: () {
              cuatro = !cuatro;
              setState(() {});
            },
          ),
          
        ],
      ),
    );
  }

  
  
}
