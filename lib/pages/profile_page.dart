import 'package:flutter/material.dart';
import 'package:gratificacion_instantanea/widgets/estados.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.settings_outlined),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Mi Usuario'),
            Icon(Icons.more_vert_outlined),
          ],
        ),
        actions: const [
          Icon(Icons.person_add_outlined),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Estados(
              imageAsset: '00',
              name: 'Yo',
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text('8',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Publicaciones'),
                ],
              ),
              Column(
                children: const [
                  Text('16',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Seguidores'),
                ],
              ),
              Column(
                children: const [
                  Text('32',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Siguiendo'),
                ],
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.grid_4x4),
              Icon(Icons.rectangle_outlined),
              Icon(Icons.label_outline),
              Icon(Icons.person_outline),
            ],
          ),
          const Divider(),
          Wrap(
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
        ],
      ),
    );
  }
}
