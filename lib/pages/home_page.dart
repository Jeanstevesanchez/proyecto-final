import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/widgets/estados.dart';
import 'package:gratificacion_instantanea/widgets/publicacion.dart';

bool favorite1 = false;
bool favorite2 = false;
bool favorite3 = false;
bool favorite4 = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera_alt_outlined),
        title: const Text('Instagram'),
        actions: const [
          Icon(Icons.message_outlined),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SizedBox(
            height: 72.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Estados(
                  name: 'Tu historia',
                  imageAsset: '00',
                ),
                SizedBox(width: 16.0),
                Estados(
                  name: 'Saitama',
                  imageAsset: '01',
                ),
                SizedBox(width: 16.0),
                Estados(
                  name: 'Among Us',
                  imageAsset: '02',
                ),
                SizedBox(width: 16.0),
                Estados(
                  name: 'Varguy',
                  imageAsset: '03',
                ),
                SizedBox(width: 16.0),
                Estados(
                  name: 'Spider',
                  imageAsset: '04',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Publicacion(
            name: 'Saitama',
            numMeGusta: '1234',
            description: 'XD',
            numComentarios: '899',
            avatarImage: '01',
            image: '01',
            favorite: favorite1,
            longPressed: () {
              favorite1 = !favorite1;
              setState(() {});
            },
          ),
          const SizedBox(height: 16.0),
          Publicacion(
            name: 'Varguy',
            numMeGusta: '1616',
            description: 'Cool',
            numComentarios: '899',
            avatarImage: '03',
            image: '03',
            favorite: favorite2,
            longPressed: () {
              favorite2 = !favorite2;
              setState(() {});
            },
             
          ),
          const SizedBox(height: 16.0),
          Publicacion(
            name: 'Among Us',
            numMeGusta: '3210',
            description: 'Sorry',
            numComentarios: '889',
            avatarImage: '02',
            image: '02',
            favorite: favorite3,
            longPressed: () {
              favorite3 = !favorite3;
              setState(() {});
            },
             
          ),
          const SizedBox(height: 16.0),
          Publicacion(
            name: 'Spider',
            numMeGusta: '4938',
            description: 'Cute',
            numComentarios: '3024',
            avatarImage: '04',
            image: '00',
            favorite: favorite4,
            longPressed: () {
              favorite4 = !favorite4;
              setState(() {});
            },
             
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
