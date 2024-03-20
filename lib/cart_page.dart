import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'main.dart';

class Cartpage extends StatefulWidget {
  Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  double delivary = 3.50;

  @override
  Widget build(BuildContext context) {
    double subtotal = subtotalprice();
    return Scaffold(
        backgroundColor: Color(0xffFAE7F2),
        bottomNavigationBar: Container(
          height: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Color(0xffFAE7F2)),
          child: Stack(children: [
            Column(
              children: [
                Container(
                  height: 30,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "\$$subtotal",
                        style: TextStyle(
                            color: Color(0xffADAEAF),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 5,
                  width: 390,
                  color: Color(0XFFD19DBB),
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Delivary",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "\$$delivary",
                        style: TextStyle(
                            color: Color(0xffADAEAF),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 5,
                  width: 390,
                  color: Color(0XFFD19DBB),
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Spacer(),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color(0XFFD19DBB),
                            borderRadius: BorderRadius.circular(10)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${subtotal + delivary}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 300,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0XFFD19DBB),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    "Payment",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
              ],
            ),
          ]),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Color(0xffDDE1F3)),
            ),
            Positioned(
              left: 5,
              top: 180,
              child: Column(
                  children: cartList.map((e) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 100,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffF1EBAE)),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Image.network(e["image"] ?? "", height: 100),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      e["name"],
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 2,
                                      width: 140,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        if (e["qty"] > 1) {
                                          e["qty"] = e["qty"] - 1;
                                          setState(() {});
                                        } else {
                                          cartList.remove(e);
                                          setState(() {});
                                        }
                                      },
                                      child: Icon(Icons.remove_circle),
                                    ),
                                    Text(
                                      e["qty"].toString(),
                                      style: TextStyle(fontSize: 22),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        e["qty"] = e["qty"] + 1;
                                        setState(() {});
                                      },
                                      child: Icon(Icons.add_circle_rounded),
                                    )
                                  ],
                                ),
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 150, top: 5),
                                    child: Text(
                                      "\$" + e["price"].toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text(
                                    "\$" +
                                        (e["qty"] * e["price"])
                                            .toStringAsFixed(2),
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xffADAEAF)),
                                  )
                                ]),
                              ],
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                );
              }).toList()),
            ),
            Container(
              height: 50,
              width: 400,
              margin: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Text("Cart",
                      style: TextStyle(color: Colors.black, fontSize: 30)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                      setState(() {});
                    },
                    child: Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  double subtotalprice() {
    double subtotal = 0;
    cartList.forEach((e) {
      subtotal += e["qty"] * e["price"];
    });
    return subtotal;
  }
}
