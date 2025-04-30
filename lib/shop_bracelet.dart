import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vcode_ui/shop_bracelet_product_details.dart';

class ShopBracelet extends StatefulWidget {
  const ShopBracelet({super.key});

  @override
  State<ShopBracelet> createState() => _ShopBraceletState();
}

class _ShopBraceletState extends State<ShopBracelet> {
  List<BraceletList> braceletList = [
    BraceletList(
        image: 'assets/images/Marriage_Bracelet.png',
        name: 'Marriage Bracelet',
        amount: '2,100'),
    BraceletList(
        image: 'assets/images/Pregnancy_Bracelet.png',
        name: 'Pregnancy Bracelet',
        amount: '2,500'),
    BraceletList(
        image: 'assets/images/Rose_Quatz_Bracelet.png',
        name: 'Rose Quatz Bracelet',
        amount: '1,549'),
    BraceletList(
        image: 'assets/images/Carnelian_Bracelet.png',
        name: 'Carnelian Bracelet',
        amount: '1,200')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF0D922), Color(0xffFF9933)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'Shop',
          style: GoogleFonts.outfit(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.41,
              color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                  child: Text(
                    'Bracelet',
                    style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: GridView.builder(
                cacheExtent: 600,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: braceletList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 214,
                    width: 168,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12, // Shadow color
                          spreadRadius: 0, // How much the shadow spreads
                          blurRadius: 15, // Soft blur effect
                          offset:
                              Offset.fromDirection(5), // Shadow position (X, Y)
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ClipRRect(
                            child: Image(
                              image: AssetImage(braceletList[index].image),
                              height: 100,
                              width: 144,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            braceletList[index].name,
                            style: GoogleFonts.outfit(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 85, 0),
                          child: Text(
                            '₹${braceletList[index].amount}/-',
                            style: GoogleFonts.outfit(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ShopBraceletProductDetails()));
                                  });
                                },
                                child: Container(
                                  height: 31,
                                  width: 105,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xffF0D922),
                                            Color(0xffFF9933)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.orange, // Border color
                                        width: 1,
                                      )),
                                  child: Center(
                                    child: Text(
                                      'Buy',
                                      style: GoogleFonts.outfit(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  print('hello');
                                },
                                child: Container(
                                  height: 31,
                                  width: 31,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xffF0D922),
                                          Color(0xffFF9933)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                  child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Center(
                                        child: ShaderMask(
                                          shaderCallback: (Rect bounds) {
                                            return LinearGradient(
                                                    colors: [
                                                  Color(0xffF0D922),
                                                  Color(0xffFF9933)
                                                ],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter)
                                                .createShader(bounds);
                                          },
                                          child: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      )),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 250,
                ),
                padding: EdgeInsets.all(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BraceletList {
  late String image;
  late String name;
  late String amount;
  BraceletList({required this.image, required this.name, required this.amount});
}
