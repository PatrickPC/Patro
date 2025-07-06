import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(''), 
            accountEmail: Text(''),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                  fit: BoxFit.cover,
                  
                  ),
            ),
            
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('Tharu Calendar'),
            onTap: () =>null,
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text('English Calendar'),
            onTap: () =>null,
          ),
          ListTile(
            leading: Icon(Icons.monitor),
            title: Text('News'),
            onTap: () =>null,
          ),
          ListTile(
            leading: Icon(Icons.radio),
            title: Text('Radio'),
            onTap: () =>null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () =>null,
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () =>null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () =>null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () =>null,
          ),
        ],
      ),

    );
  }
}