import 'dart:ui';

import 'package:project/product_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'cart_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => Firstpage(),
      "product_detail": (context) => ProductDetail(),
      "cart_page": (context) => Cartpage(),
    },
  ));
}

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirtspageState();
}

class _FirtspageState extends State<Firstpage> {
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAE7F2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50, left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new, size: 20),
                      Text(
                        "Summer 2020",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 170),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF4F4F4),
                            border: Border(bottom: BorderSide(width: 5))),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "cart_page");
                          },
                          child: Icon(
                            Icons.notifications_active_rounded,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              DropdownButton(
                value: selectedCategory,
                hint: Text("Select Category"),
                items: category.map((e) {
                  return DropdownMenuItem(child: Text(e), value: e);
                }).toList(),
                onChanged: (val) {
                  selectedCategory = val;
                  setState(() {});
                },
              ),
              if (selectedCategory != null)
                ActionChip(
                  onPressed: () {
                    selectedCategory = null;
                    setState(() {});
                    print("Clear");
                  },
                  avatar: Icon(Icons.close),
                  label: Text("Clear"),
                ),
              Column(
                children: [
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "FORMAL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Formal.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product_detail",
                                arguments: e);
                          },
                          child: Product(
                            image: e["image"],
                            name: e["name"],
                            category: e["category"],
                            price: e["price"],
                            detail: e["detail"],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "WESTERN",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Western.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product_detail",
                                arguments: e);
                          },
                          child: Product(
                            image: e["image"],
                            name: e["name"],
                            category: e["category"],
                            price: e["price"],
                            detail: e["detail"],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "ETHNIC",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Ethnic.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product_detail",
                                arguments: e);
                          },
                          child: Product(
                            image: e["image"],
                            name: e["name"],
                            category: e["category"],
                            price: e["price"],
                            detail: e["detail"],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "SKINCARE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Skincare.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product_detail",
                                arguments: e);
                          },
                          child: Product(
                            image: e["image"],
                            name: e["name"],
                            category: e["category"],
                            price: e["price"],
                            detail: e["detail"],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F4F4),
                        borderRadius: BorderRadius.circular(50)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "FOOTWEAR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: Footwear.map((e) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "product_detail",
                                arguments: e);
                          },
                          child: Product(
                            image: e["image"],
                            name: e["name"],
                            category: e["category"],
                            price: e["price"],
                            detail: e["detail"],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class Product extends StatelessWidget {
  String? name;
  String? category;
  String? image;
  double? price;
  String? detail;

  Product({
    super.key,
    this.name,
    this.image,
    this.category,
    this.price,
    this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 270,
          width: 150,
          margin: EdgeInsets.only(left: 17, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffF4F4F4)),
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  image ?? "",
                ),
              ),
              Text(
                name ?? "",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                detail ?? "",
                style: TextStyle(fontSize: 10),
              ),
              Text(
                "\$$price",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ],
    );
  }
}

List<Map> Formal = [
  {
    "category": "FORMAL",
    "qty": 1,
    "name": "onepiece",
    "detail": "Women Maxi black, White, Orange Dress",
    "price": 22.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/l3khsi80/dress/n/r/c/s-ttj6007154-tokyo-talkies-original-imagenvg6hutkcjp.jpeg?q=70"
  },
  {
    "category": "FORMAL",
    "qty": 1,
    "name": "jumpshuit",
    "detail": "Women Sheath Purple,black,white Dress",
    "price": 28.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/kwpam4w0/jumpsuit/g/z/g/xxl-sfjmps8185-sassafras-original-imag9bffczmggtxd.jpeg?q=70"
  }
];
List<Map> Footwear = [
  {
    "category": "FOOTWEAR",
    "qty": 1,
    "name": "flats",
    "detail": "Women Green Flats Sandal and comfert",
    "price": 22.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/sandal/v/h/v/-original-imaghxf9jrv6qfye.jpeg?q=70"
  },
  {
    "category": "FOOTWEAR",
    "qty": 1,
    "name": "shoes",
    "detail": "ALICE Walking Shoes For Women",
    "price": 28.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/shoe/z/h/8/-original-imagfxf6cmvudf7p-bb.jpeg?q=70"
  }
];
List<Map> Ethnic = [
  {
    "category": "Ethnic",
    "qty": 1,
    "name": "suit",
    "detail": "Women Cotton Blend Kurta Pant Dupatta Set",
    "price": 22.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/ethnic-set/o/n/4/l-sw-pustak-blue1-piludi-original-imagr7wfue5gwjhn.jpeg?q=70"
  },
  {
    "category": "FORMAL",
    "qty": 1,
    "name": "kaftan",
    "detail": "Women Sheath Purple,black,white Dress",
    "price": 28.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/kpydrbk0/ethnic-set/k/g/4/xl-6919-white-libas-original-imag42szxfjfyuz3.jpeg?q=70"
  }
];

List<Map> Western = [
  {
    "qty": 1,
    "name": "Tops",
    "category": "WESTERN",
    "detail": "Casual Puff Sleeves Self Design Women White Top",
    "price": 22.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/shopsy-top/p/w/x/l-shopsy-4-valentino-purple-812-fabflee-original-imagrzgvkug3q5b4.jpeg?q=70"
  },
  {
    "qty": 1,
    "name": "Jeans",
    "category": "WESTERN",
    "detail": "Women regular mid rise blue jeans",
    "price": 25.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/jean/s/g/q/32-ttjn003895-tokyo-talkies-original-imagz5udbptugvpj.jpeg?q=70"
  }
];
List<Map> Skincare = [
  {
    "qty": 1,
    "name": "Sunscreen",
    "category": "skincare",
    "detail": " Hyaluronic Acid Aqua-Light Sunscre",
    "price": 22.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/sunscreen/f/a/g/50-cica-hyaluronic-acid-aqua-light-sunscreen-no-white-cast-non-original-imagxn8qvk3gqbyg.jpeg?q=70"
  },
  {
    "qty": 1,
    "name": "Facewash",
    "category": "skincare",
    "detail": "Hyaluronic Acid For Hydrated Pink Glow Face Wash",
    "price": 25.00,
    "image":
        "https://rukminim2.flixcart.com/image/612/612/xif0q/face-wash/u/l/q/100-beetroot-gentle-face-wash-with-beetroot-hyaluronic-acid-for-original-imagx32mmdecsxm2.jpeg?q=70"
  }
];

List<Map> cartList = [];
List<String> category = [
  "Western",
  "Ethnic",
  "Formal",
  "Skincare",
  "Footwear",
];
