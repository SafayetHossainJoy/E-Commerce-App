/*import 'package:flutter/material.dart';
import 'package:islamic_item/Screen/HomeScreen.dart';
import 'package:islamic_item/pages/drawer.dart';

class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.teal),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "About",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "images/logo-modified.png",
                height: 400,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Islamic Item has changed the way people shop and consume products and services. More and more people are turning to their computers and smart devices to order goods, which can easily be delivered to their homes. ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 12, 12, 12),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

*/

import 'package:flutter/material.dart';
import 'package:islamic_item/Screen/HomeScreen.dart';
import 'package:islamic_item/pages/drawer.dart';

class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: (Colors.teal),
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "About",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.teal.shade50,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage("images/logo-modified.png")),
            Text(
              'About Us',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: ListTile(
                title: Text(
                  "Islamic Item has changed the way people shop and consume products and services. More and more people are turning to their computers and smart devices to order goods, which can easily be delivered to their homes. ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 12, 12, 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
