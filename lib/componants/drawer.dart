import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            accountName: Text('John Doe'),
            accountEmail: Text('ahmed_ali12@gmail.com'),
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            title: const Text(
              'Account',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            ),
            title: const Text(
              'Location',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.receipt,
              color: Colors.white,
            ),
            title: const Text(
              'Reports',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          const ListTile(
            leading: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            title: Text(
              'Chat',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            title: Text(
              'About us',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
