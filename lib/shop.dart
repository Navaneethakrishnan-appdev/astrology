import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vcode_ui/shop_bracelet.dart';
import 'package:vcode_ui/shop_bracelet_product_details.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<CategoryList> categoryList = [
    CategoryList(image: 'assets/images/Online_Puja.png', name: 'Online Puja'),
    CategoryList(image: 'assets/images/Healings.png', name: 'Healings'),
    CategoryList(image: 'assets/images/Gemstones.png', name: 'Gemstones'),
    CategoryList(image: 'assets/images/Spells.png', name: 'Spells'),
    CategoryList(image: 'assets/images/Bracelet.png', name: 'Bracelet'),
    CategoryList(image: 'assets/images/Rudraksha.png', name: 'Rudraksha')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Column(
                children: [
                  Text(
                    'Category',
                    style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 20),
                itemCount: categoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (categoryList[index].name == 'Bracelet') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ShopBracelet()));
                            }
                            // else if (categoryList[index].name ==
                            //     'Rudraksha') {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) =>
                            //               ShopBraceletProductDetails()));
                            // }
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                spreadRadius: 0,
                                offset: Offset.fromDirection(5),
                              )
                            ],
                            border:
                                Border.all(color: Colors.orange, width: 0.5),
                          ),
                          child: Center(
                              child: Image(
                                  image:
                                      AssetImage(categoryList[index].image))),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        categoryList[index].name,
                        style: GoogleFonts.outfit(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8A8A8A)),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryList {
  late String image;
  late String name;

  CategoryList({required this.image, required this.name});
}
