import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.6),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xFF11dce8).withOpacity(0.3),
              ),
              child: const Image(
                image: AssetImage('assets/images/avatar.png'),
              )),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            contentPadding: const EdgeInsets.only(left: 50),
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
            contentPadding: const EdgeInsets.only(left: 50),
            leading: const Icon(
              Icons.verified_user_sharp,
              color: Colors.white,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/favourites');
            },
            contentPadding: const EdgeInsets.only(left: 50),
            leading: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
            title: const Text(
              'Favorites',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            contentPadding: const EdgeInsets.only(left: 50),
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: const Text(
              'Log out',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
