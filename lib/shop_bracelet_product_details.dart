import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopBraceletProductDetails extends StatefulWidget {
  const ShopBraceletProductDetails({super.key});

  @override
  State<ShopBraceletProductDetails> createState() =>
      _ShopBraceletProductDetailsState();
}

class _ShopBraceletProductDetailsState
    extends State<ShopBraceletProductDetails> {
  List<Map<String, dynamic>> customerReviews = [
    {
      'image': 'assets/images/Ruby.png',
      'rating': 5,
      'name': 'Ruby',
      'month_date_year': 'Aug 5, 2024',
      'review':
          'It has balanced my rahu dosha by simple remedial solutions.....',
      'review_comment': 'Well done.',
    },
    {
      'image': '',
      'rating': 3,
      'name': 'Naruto',
      'month_date_year': 'Aug 5, 2024',
      'review':
          'It has balanced my rahu dosha by simple remedial solutions.....',
      'review_comment': 'Well done.',
    },
  ];

  List<Map<String, dynamic>> relatedProducts = [
    {
      'image': 'assets/images/Marriage_Bracelet.png',
      'name': 'Marriage Bracelet',
      'amount': '2,100'
    },
    {
      'image': 'assets/images/Pregnancy_Bracelet.png',
      'name': 'Pregnancy Bracelet',
      'amount': '2,500'
    },
    {
      'image': 'assets/images/Rose_Quatz_Bracelet.png',
      'name': 'Rose Quatz Bracelet',
      'amount': '1,549'
    },
    {
      'image': 'assets/images/Carnelian_Bracelet.png',
      'name': 'Carnelian Bracelet',
      'amount': '1,200'
    },
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
                    end: Alignment.bottomCenter)),
          ),
          leading: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            'Product Details',
            style: GoogleFonts.outfit(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: -0.41),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
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
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 352,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 0,
                                blurRadius: 15,
                                offset: Offset.fromDirection(5))
                          ]),
                      child: ClipRRect(
                        child: Image(
                          image: AssetImage(
                              'assets/images/Marriage_Bracelet_one.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              'Marriage Bracelet',
                              style: GoogleFonts.outfit(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.41,
                              ),
                            ),
                            SizedBox(width: 70),
                            Text(
                              '₹2,100 /-',
                              style: GoogleFonts.outfit(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
                    child: Column(
                      children: [
                        Text(
                          'About the product',
                          style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff696969),
                              letterSpacing: -0.41),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Column(
                      children: [
                        Text(
                          'An excellent combination for aligning the crown and heart chakras, amethyst when paired with rose quartz is believed to facilitate deeper, more spiritual love. It is also said to regulate the attractuion that rose quartz is known to generate.',
                          style: GoogleFonts.outfit(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff696969),
                              letterSpacing: -0.14),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: Column(
                      children: [
                        Text(
                          'Customer Reviews',
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff696969),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ListView.builder(
                    itemBuilder: (BuildContext context, index) {
                      final review = customerReviews[index];

                      final hasImage =
                          review['image'] != null && review['image'].isNotEmpty;
                      final initials = review['name'].isNotEmpty
                          ? review['name'][0].toUpperCase()
                          : ''; // First letter of the name

                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              width: 352,
                              height: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 0,
                                      blurRadius: 15,
                                      offset: Offset.fromDirection(5),
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Container(
                                      width: 100,
                                      height: 116,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              spreadRadius: 0,
                                              blurRadius: 15,
                                              offset: Offset(5, 5),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10)),
                                                child: hasImage
                                                    ? Image(
                                                        image: AssetImage(
                                                            review['image']),
                                                        height: 85,
                                                        width: double.infinity,
                                                        fit: BoxFit.cover,
                                                      )
                                                    : Container(
                                                        height: 85,
                                                        color: Colors.purple,
                                                        child: Center(
                                                          child: Text(
                                                            initials,
                                                            style: GoogleFonts
                                                                .outfit(
                                                                    fontSize:
                                                                        60,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                      )),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: List.generate(
                                              review['rating'],
                                              (index) => Icon(
                                                Icons.star,
                                                color: Colors.orange,
                                                size: 20,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 0),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 30, 0),
                                                  child: Text(
                                                    review['name'],
                                                    style: GoogleFonts.outfit(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 50),
                                                Text(
                                                  review['month_date_year'],
                                                  style: GoogleFonts.outfit(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff696969)),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Column(
                                            children: [
                                              Text(
                                                review['review'],
                                                style: GoogleFonts.outfit(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xff696969)),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 145, 0),
                                                child: Text(
                                                  review['review_comment'],
                                                  style: GoogleFonts.outfit(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff696969)),
                                                  textAlign: TextAlign.justify,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: customerReviews.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  ),

                  // Column(
                  //   children: [
                  //     Container(
                  //       width: 352,
                  //       height: 140,
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(20),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.black12,
                  //               spreadRadius: 0,
                  //               blurRadius: 15,
                  //               offset: Offset.fromDirection(5),
                  //             )
                  //           ]),
                  //       child: Row(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //             child: Container(
                  //               width: 100,
                  //               height: 116,
                  //               decoration: BoxDecoration(
                  //                   color: Colors.white,
                  //                   boxShadow: [
                  //                     BoxShadow(
                  //                       color: Colors.black12,
                  //                       spreadRadius: 0,
                  //                       blurRadius: 15,
                  //                       offset: Offset(5, 5),
                  //                     )
                  //                   ],
                  //                   borderRadius: BorderRadius.circular(10)),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(0),
                  //                     child: ClipRRect(
                  //                         borderRadius: BorderRadius.only(
                  //                             topLeft: Radius.circular(10),
                  //                             topRight: Radius.circular(10)),
                  //                         child: Image(
                  //                           image: AssetImage(
                  //                               'assets/images/Ruby.png'),
                  //                           height: 85,
                  //                           width: double.infinity,
                  //                           fit: BoxFit.cover,
                  //                         )),
                  //                   ),
                  //                   SizedBox(height: 5),
                  //                   Row(
                  //                     children: [
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           SizedBox(width: 20),
                  //           Expanded(
                  //             child: Padding(
                  //               padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  //               child: Column(
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.fromLTRB(
                  //                         0, 10, 0, 0),
                  //                     child: Row(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 30, 0),
                  //                           child: Text(
                  //                             'Ragul',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 18,
                  //                               fontWeight: FontWeight.w600,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(width: 50),
                  //                         Text(
                  //                           'Aug 5, 2024',
                  //                           style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Color(0xff696969)),
                  //                         )
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   SizedBox(height: 10),
                  //                   Column(
                  //                     children: [
                  //                       Text(
                  //                         'It has balanced my rahu dosha by simple remedial solutions.....',
                  //                         style: GoogleFonts.outfit(
                  //                             fontSize: 12,
                  //                             fontWeight: FontWeight.w400,
                  //                             color: Color(0xff696969)),
                  //                         textAlign: TextAlign.justify,
                  //                       ),
                  //                       // Padding(
                  //                       //   padding: const EdgeInsets.fromLTRB(
                  //                       //       0, 0, 30, 0),
                  //                       //   child: Text(
                  //                       //     'simple remedial solutions..... ',
                  //                       //     style: GoogleFonts.outfit(
                  //                       //         fontSize: 12,
                  //                       //         fontWeight: FontWeight.w400,
                  //                       //         color: Color(0xff696969)),
                  //                       //     textAlign: TextAlign.justify,
                  //                       //   ),
                  //                       // )
                  //                     ],
                  //                   ),
                  //                   SizedBox(height: 10),
                  //                   Column(
                  //                     children: [
                  //                       Padding(
                  //                         padding: const EdgeInsets.fromLTRB(
                  //                             0, 0, 145, 0),
                  //                         child: Text(
                  //                           'Well done. ',
                  //                           style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Color(0xff696969)),
                  //                           textAlign: TextAlign.justify,
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(height: 20),
                  // Column(
                  //   children: [
                  //     Container(
                  //       width: 352,
                  //       height: 140,
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(20),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.black12,
                  //               spreadRadius: 0,
                  //               blurRadius: 15,
                  //               offset: Offset.fromDirection(5),
                  //             )
                  //           ]),
                  //       child: Row(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  //             child: Container(
                  //               width: 100,
                  //               height: 116,
                  //               decoration: BoxDecoration(
                  //                   color: Colors.white,
                  //                   boxShadow: [
                  //                     BoxShadow(
                  //                       color: Colors.black12,
                  //                       spreadRadius: 0,
                  //                       blurRadius: 15,
                  //                       offset: Offset(5, 5),
                  //                     )
                  //                   ],
                  //                   borderRadius: BorderRadius.circular(10)),
                  //               child: Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(0),
                  //                     child: ClipRRect(
                  //                         borderRadius: BorderRadius.only(
                  //                             topLeft: Radius.circular(10),
                  //                             topRight: Radius.circular(10)),
                  //                         child: Image(
                  //                           image: AssetImage(
                  //                               'assets/images/Naruto.png'),
                  //                           height: 85,
                  //                           width: double.infinity,
                  //                           fit: BoxFit.cover,
                  //                         )),
                  //                   ),
                  //                   SizedBox(height: 5),
                  //                   Row(
                  //                     children: [
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                       Icon(
                  //                         Icons.star,
                  //                         color: Colors.orange,
                  //                         size: 20,
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //           SizedBox(width: 20),
                  //           Expanded(
                  //             child: Padding(
                  //               padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  //               child: Column(
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.fromLTRB(
                  //                         0, 10, 0, 0),
                  //                     child: Row(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 30, 0),
                  //                           child: Text(
                  //                             'Naruto',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 18,
                  //                               fontWeight: FontWeight.w600,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(width: 50),
                  //                         Text(
                  //                           'Aug 5, 2024',
                  //                           style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Color(0xff696969)),
                  //                         )
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   SizedBox(height: 10),
                  //                   Column(
                  //                     children: [
                  //                       Text(
                  //                         'It has balanced my rahu dosha by simple remedial solutions.....',
                  //                         style: GoogleFonts.outfit(
                  //                             fontSize: 12,
                  //                             fontWeight: FontWeight.w400,
                  //                             color: Color(0xff696969)),
                  //                         textAlign: TextAlign.justify,
                  //                       ),
                  //                       // Padding(
                  //                       //   padding: const EdgeInsets.fromLTRB(
                  //                       //       0, 0, 30, 0),
                  //                       //   child: Text(
                  //                       //     'simple remedial solutions..... ',
                  //                       //     style: GoogleFonts.outfit(
                  //                       //         fontSize: 12,
                  //                       //         fontWeight: FontWeight.w400,
                  //                       //         color: Color(0xff696969)),
                  //                       //     textAlign: TextAlign.justify,
                  //                       //   ),
                  //                       // )
                  //                     ],
                  //                   ),
                  //                   SizedBox(height: 20),
                  //                   Column(
                  //                     children: [
                  //                       Padding(
                  //                         padding: const EdgeInsets.fromLTRB(
                  //                             0, 0, 145, 0),
                  //                         child: Text(
                  //                           'Well done. ',
                  //                           style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Color(0xff696969)),
                  //                           textAlign: TextAlign.justify,
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     )
                  //   ],
                  // ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
                    child: Column(
                      children: [
                        Text(
                          'Related Products',
                          style: GoogleFonts.outfit(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff696969)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  CarouselSlider(
                      items: relatedProducts.map((item) {
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            height: 214,
                            width: 168,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12, // Shadow color
                                  spreadRadius:
                                      0, // How much the shadow spreads
                                  blurRadius: 15, // Soft blur effect
                                  offset: Offset.fromDirection(
                                      5), // Shadow position (X, Y)
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ClipRRect(
                                    child: Image(
                                      image: AssetImage(item['image']!),
                                      height: 100,
                                      width: 144,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    item['name']!,
                                    style: GoogleFonts.outfit(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 85, 0),
                                  child: Text(
                                    '₹${item['amount']!} /-',
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
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {});
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Colors
                                                    .orange, // Border color
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
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () {
                                          print('hello');
                                        },
                                        child: Container(
                                          height: 31,
                                          width: 31,
                                          padding: EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                  shaderCallback:
                                                      (Rect bounds) {
                                                    return LinearGradient(
                                                            colors: [
                                                          Color(0xffF0D922),
                                                          Color(0xffFF9933)
                                                        ],
                                                            begin: Alignment
                                                                .topCenter,
                                                            end: Alignment
                                                                .bottomCenter)
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
                        });
                      }).toList(),
                      options: CarouselOptions(
                        enlargeCenterPage: false,
                        viewportFraction: 0.50,
                        enableInfiniteScroll: false,
                        autoPlay: false,
                        initialPage: 0,
                        pageSnapping: false,
                        padEnds: false,
                      ))

                  // Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.fromLTRB(18, 0, 12, 0),
                  //           child: Container(
                  //             height: 214,
                  //             width: 168,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Colors.black12, // Shadow color
                  //                   spreadRadius:
                  //                       0, // How much the shadow spreads
                  //                   blurRadius: 15, // Soft blur effect
                  //                   offset: Offset.fromDirection(
                  //                       5), // Shadow position (X, Y)
                  //                 ),
                  //               ],
                  //             ),
                  //             child: Column(
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(10),
                  //                   child: ClipRRect(
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/Marriage_Bracelet.png'),
                  //                       height: 100,
                  //                       width: 144,
                  //                       fit: BoxFit.contain,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding:
                  //                       const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //                   child: Text(
                  //                     'Marriage Bracelet',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 14,
                  //                       fontWeight: FontWeight.w600,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding:
                  //                       const EdgeInsets.fromLTRB(0, 0, 85, 0),
                  //                   child: Text(
                  //                     '₹2,100 /-',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 10,
                  //                       fontWeight: FontWeight.w400,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 15),
                  //                 Row(
                  //                   children: [
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           10, 0, 0, 0),
                  //                       child: InkWell(
                  //                         onTap: () {
                  //                           setState(() {});
                  //                         },
                  //                         child: Container(
                  //                           height: 31,
                  //                           width: 105,
                  //                           decoration: BoxDecoration(
                  //                               gradient: LinearGradient(
                  //                                   colors: [
                  //                                     Color(0xffF0D922),
                  //                                     Color(0xffFF9933)
                  //                                   ],
                  //                                   begin: Alignment.topCenter,
                  //                                   end:
                  //                                       Alignment.bottomCenter),
                  //                               borderRadius:
                  //                                   BorderRadius.circular(10),
                  //                               border: Border.all(
                  //                                 color: Colors
                  //                                     .orange, // Border color
                  //                                 width: 1,
                  //                               )),
                  //                           child: Center(
                  //                             child: Text(
                  //                               'Buy',
                  //                               style: GoogleFonts.outfit(
                  //                                   fontSize: 12,
                  //                                   fontWeight: FontWeight.w500,
                  //                                   color: Colors.white),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           10, 0, 0, 0),
                  //                       child: InkWell(
                  //                         onTap: () {
                  //                           print('hello');
                  //                         },
                  //                         child: Container(
                  //                           height: 31,
                  //                           width: 31,
                  //                           padding: EdgeInsets.all(2),
                  //                           decoration: BoxDecoration(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(10),
                  //                             gradient: LinearGradient(
                  //                                 colors: [
                  //                                   Color(0xffF0D922),
                  //                                   Color(0xffFF9933)
                  //                                 ],
                  //                                 begin: Alignment.topCenter,
                  //                                 end: Alignment.bottomCenter),
                  //                           ),
                  //                           child: Container(
                  //                               height: 30,
                  //                               width: 30,
                  //                               decoration: BoxDecoration(
                  //                                   color: Colors.white,
                  //                                   borderRadius:
                  //                                       BorderRadius.circular(
                  //                                           8)),
                  //                               child: Center(
                  //                                 child: ShaderMask(
                  //                                   shaderCallback:
                  //                                       (Rect bounds) {
                  //                                     return LinearGradient(
                  //                                             colors: [
                  //                                           Color(0xffF0D922),
                  //                                           Color(0xffFF9933)
                  //                                         ],
                  //                                             begin: Alignment
                  //                                                 .topCenter,
                  //                                             end: Alignment
                  //                                                 .bottomCenter)
                  //                                         .createShader(bounds);
                  //                                   },
                  //                                   child: Icon(
                  //                                     Icons.shopping_cart,
                  //                                     color: Colors.white,
                  //                                     size: 20,
                  //                                   ),
                  //                                 ),
                  //                               )),
                  //                         ),
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                  //           child: Container(
                  //             height: 214,
                  //             width: 168,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Colors.black12, // Shadow color
                  //                   spreadRadius:
                  //                       0, // How much the shadow spreads
                  //                   blurRadius: 15, // Soft blur effect
                  //                   offset: Offset.fromDirection(
                  //                       5), // Shadow position (X, Y)
                  //                 ),
                  //               ],
                  //             ),
                  //             child: Column(
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(10),
                  //                   child: ClipRRect(
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/Marriage_Bracelet.png'),
                  //                       height: 100,
                  //                       width: 144,
                  //                       fit: BoxFit.contain,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding:
                  //                       const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //                   child: Text(
                  //                     'Marriage Bracelet',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 14,
                  //                       fontWeight: FontWeight.w600,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding:
                  //                       const EdgeInsets.fromLTRB(0, 0, 85, 0),
                  //                   child: Text(
                  //                     '₹2,100 /-',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 10,
                  //                       fontWeight: FontWeight.w400,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 15),
                  //                 Row(
                  //                   children: [
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           10, 0, 0, 0),
                  //                       child: InkWell(
                  //                         onTap: () {
                  //                           setState(() {});
                  //                         },
                  //                         child: Container(
                  //                           height: 31,
                  //                           width: 105,
                  //                           decoration: BoxDecoration(
                  //                               gradient: LinearGradient(
                  //                                   colors: [
                  //                                     Color(0xffF0D922),
                  //                                     Color(0xffFF9933)
                  //                                   ],
                  //                                   begin: Alignment.topCenter,
                  //                                   end:
                  //                                       Alignment.bottomCenter),
                  //                               borderRadius:
                  //                                   BorderRadius.circular(10),
                  //                               border: Border.all(
                  //                                 color: Colors
                  //                                     .orange, // Border color
                  //                                 width: 1,
                  //                               )),
                  //                           child: Center(
                  //                             child: Text(
                  //                               'Buy',
                  //                               style: GoogleFonts.outfit(
                  //                                   fontSize: 12,
                  //                                   fontWeight: FontWeight.w500,
                  //                                   color: Colors.white),
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           10, 0, 0, 0),
                  //                       child: InkWell(
                  //                         onTap: () {
                  //                           print('hello');
                  //                         },
                  //                         child: Container(
                  //                           height: 31,
                  //                           width: 31,
                  //                           padding: EdgeInsets.all(2),
                  //                           decoration: BoxDecoration(
                  //                             borderRadius:
                  //                                 BorderRadius.circular(10),
                  //                             gradient: LinearGradient(
                  //                                 colors: [
                  //                                   Color(0xffF0D922),
                  //                                   Color(0xffFF9933)
                  //                                 ],
                  //                                 begin: Alignment.topCenter,
                  //                                 end: Alignment.bottomCenter),
                  //                           ),
                  //                           child: Container(
                  //                               height: 30,
                  //                               width: 30,
                  //                               decoration: BoxDecoration(
                  //                                   color: Colors.white,
                  //                                   borderRadius:
                  //                                       BorderRadius.circular(
                  //                                           8)),
                  //                               child: Center(
                  //                                 child: ShaderMask(
                  //                                   shaderCallback:
                  //                                       (Rect bounds) {
                  //                                     return LinearGradient(
                  //                                             colors: [
                  //                                           Color(0xffF0D922),
                  //                                           Color(0xffFF9933)
                  //                                         ],
                  //                                             begin: Alignment
                  //                                                 .topCenter,
                  //                                             end: Alignment
                  //                                                 .bottomCenter)
                  //                                         .createShader(bounds);
                  //                                   },
                  //                                   child: Icon(
                  //                                     Icons.shopping_cart,
                  //                                     color: Colors.white,
                  //                                     size: 20,
                  //                                   ),
                  //                                 ),
                  //                               )),
                  //                         ),
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          width: 384,
          height: 143,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius: 15,
                offset: Offset(5, 0))
          ]),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 0),
                    child: Text(
                      'Total Amount: ',
                      style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(140, 20, 0, 0),
                    child: Text(
                      '₹2,100 /-',
                      style: GoogleFonts.outfit(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 46,
                        width: 169,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Color(0xffF0D922),
                              Color(0xffFF9933)
                            ])),
                        child: Container(
                          height: 44,
                          width: 167,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.white),
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
                              child: Text(
                                'Add to cart',
                                style: GoogleFonts.outfit(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 46,
                        width: 169,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                colors: [Color(0xffF0D922), Color(0xffFF9933)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Center(
                          child: Text(
                            'Buy now',
                            style: GoogleFonts.outfit(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
