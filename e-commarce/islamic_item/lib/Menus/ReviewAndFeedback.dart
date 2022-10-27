import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:islamic_item/Screen/HomeScreen.dart';
import 'package:islamic_item/pages/drawer.dart';
import 'package:islamic_item/widget/custom_TextField.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  get product => null;

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  TextEditingController _notesController = TextEditingController();
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
          "Review and Feedback",
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
                radius: 130,
                backgroundImage: AssetImage("images/logo-modified.png")),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 12, 12, 12),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      RatingBar.builder(
                          initialRating: 0,
                          direction: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return const Icon(Icons.star, color: Colors.amber);
                          },
                          onRatingUpdate: (rating) {}),
                      //  const SizedBox(width: 30),
                      Text(
                        "(100 Reviews)",
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Text(
                    "Feedback",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 12, 12, 12),
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextField(
                    controller: _notesController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 64,
                      width: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.teal,
                              Color.fromARGB(255, 214, 245, 202)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          final snackBar =
                              SnackBar(content: Text("send Successful"));
                          //Scaffold.of(context).showSnackBar(snackBar);
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text(
                          "Send",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
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
