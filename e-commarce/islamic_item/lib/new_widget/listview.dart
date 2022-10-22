import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_item/api/user%20model/pro.dart';
import 'package:islamic_item/product_model/product.dart';
import 'package:islamic_item/screen/product_detail_screen.dart';
import 'package:islamic_item/widget/open_container_wrapper.dart';

class PopItemList extends StatefulWidget {
  const PopItemList({
    Key? key,
  }) : super(key: key);

  @override
  State<PopItemList> createState() => _PopItemListState();
}

class _PopItemListState extends State<PopItemList> {
  Productget? data;
  bool isloading = false;
  @override
  void initState() {
    readLocalJson();
    super.initState();
  }

  Map<String, dynamic> myMap = Map();
  readLocalJson() async {
    isloading = true;
    print("START");
    var f = await rootBundle.loadString("assets/emprecord.json");
    // print("r$f");
    var data = jsonDecode(f);
    print("j");
    // Productget data1 = Productget.fromJson(data);\
    myMap = data;
    print("e");
    setState(() {
      isloading = false;
    });
    print("All Data are $data");
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height);
    return Container(
        height: size.height * 0.35,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: myMap["result"]["response"].length,
            itemBuilder: (context, index) {
              Product product = controller.filteredProducts[index];
              return OpenContainerWrapper(
                  // ignore: sort_child_properties_last
                  child: Card(
                    child: Container(
                      width: size.width * 0.5,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Visibility(
                                visible: controller.isPriceOff(product),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  width: 80,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "30% OFF",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color:
                                      controller.filteredProducts[index].isLiked
                                          ? Colors.redAccent
                                          : const Color(0xFFA6A3A0),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Image.network(
                                '$data["result"]["response"][index]["image_128"]',
                                width: size.width * 0.32,
                                height: size.height * 0.16),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: size.width * 0.01),
                            child: Text(
                                "${myMap["result"]["response"][index]["name"]}"),
                          ),
                          /*Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: size.width * 0.05),
                            child: Text(
                                "${myMap["result"]["response"][index]["id"]}"),
                          ),*/
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                product.off != null
                                    ? product.off.toString()
                                    : product.price.toString(),
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Visibility(
                                visible: product.off != null ? true : false,
                                child: Text(
                                  product.price.toString(),
                                  style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  product: product);
            }));
  }
}
