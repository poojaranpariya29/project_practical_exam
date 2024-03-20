import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int cout = 1;

  @override
  Widget build(BuildContext context) {
    final Formal = ModalRoute.of(context)?.settings.arguments as Map?;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAE7F2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(Formal?["image"] ?? ""),
                  Positioned(
                    left: 20,
                    top: 35,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Text(
                      Formal?["name"] ?? "",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Text(
                Formal?["detail"] ?? "",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "COLOR",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.orangeAccent),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "size",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "XL",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "L",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "M",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0XFFD19DBB)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "S",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(color: Color(0XFFD19DB4)),
                child: InkWell(
                    onTap: () {
                      if (Formal != 0) {
                        cartList.add(Formal!);
                      }
                      Navigator.pushNamed(context, "cart_page");
                    },
                    child: Center(
                        child: Text(
                      "Add To Cart",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
