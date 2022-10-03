import 'package:flutter/material.dart';

import '../pages/favorite_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../pages/seacrh_page.dart';
import '../pages/upload_page.dart';

class TabsInsta extends StatelessWidget {
  const TabsInsta({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              HomePage(),
              SearchPage(),
              UploadPage(),
              FavoritePage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Icon(Icons.home_filled),
              Icon(Icons.search),
              Icon(Icons.add),
              Icon(Icons.favorite_outline),
              Icon(Icons.person),
            ],
          ),
        ),
      )
   ;
  }
}