import 'package:flutter/material.dart';
import 'package:islamic_item/Menus/AboutUs.dart';

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
            title: const Text('About Us'),
            //To perform action on tapping at tile
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About_Us()));
            },
          ),
          divider,
          ListTile(
            title: const Text('Contact Us'),
            //To perform action on tapping at tile
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About_Us()));
            },
          ),
          divider,
          ListTile(
            title: const Text('Terms and Conditions'),
            //To perform action on tapping at tile
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About_Us()));
            },
          ),
          /*divider,
           ListTile(
            title: const Text(' Policy'),
            //To perform action on tapping at tile
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About_Us()));
            },
          ),*/
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
            title: const Text('Share'),
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
