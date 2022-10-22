import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
    required this.divider,
  }) : super(key: key);

  final Divider divider;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              //Title of header
              child: Image(image: AssetImage("images/logo-modified.png"))),
          //Child tile of drawer with specified title
          ListTile(
            title: const Text('Home'),
            //To perform action on tapping at tile
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Categories'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Review'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Products'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Feedback'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Add Product'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Kids'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Men'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Furniture'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Women'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Animals'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Toys'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          divider,
          ListTile(
            title: const Text('Exit'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

enum Menu { itemlogin, itemsignup, itemlogout }
