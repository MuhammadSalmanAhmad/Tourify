import 'package:flutter/material.dart';

class MainPanelDrawer extends StatelessWidget {
  const MainPanelDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return   Drawer(

    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            shape: BoxShape.circle
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            // Update the state of the app.
            // ...
          },
        ),
      ],
    )
    );
  }
}