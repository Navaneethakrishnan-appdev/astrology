import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<ChatList> chatList = [
    ChatList(
        image: 'assets/images/Ruby.png',
        name: 'Ruby',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Naruto.png',
        name: 'Naruto',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Maya.png',
        name: 'Maya',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Will.png',
        name: 'Will',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Lila.png',
        name: 'Lila',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Ruby.png',
        name: 'Ruby',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Naruto.png',
        name: 'Naruto',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Maya.png',
        name: 'Maya',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Will.png',
        name: 'Will',
        language: 'Tamil, English',
        experience: '2 Years'),
    ChatList(
        image: 'assets/images/Lila.png',
        name: 'Lila',
        language: 'Tamil, English',
        experience: '2 Years')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Column(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Ruby.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Ruby',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Naruto.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 35, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Naruto',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Maya.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Maya',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Will.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Will',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Lila.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Lila',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Ruby.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 50, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Ruby',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(10),
            //       child: Container(
            //         height: 140,
            //         width: 352,
            //         decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(20),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Colors.black26,
            //                 blurRadius: 15,
            //                 spreadRadius: 0,
            //                 offset: Offset.fromDirection(5))
            //           ],
            //         ),
            //         child: Row(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            //               child: Container(
            //                 width: 100,
            //                 height: 116,
            //                 decoration: BoxDecoration(
            //                     color: Colors.white,
            //                     boxShadow: [
            //                       BoxShadow(
            //                         color: Colors.black12,
            //                         spreadRadius: 0,
            //                         blurRadius: 15,
            //                         offset: Offset(5, 5),
            //                       )
            //                     ],
            //                     borderRadius: BorderRadius.circular(10)),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.center,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.all(0),
            //                       child: ClipRRect(
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               topRight: Radius.circular(10)),
            //                           child: Image(
            //                             image: AssetImage(
            //                                 'assets/images/Naruto.png'),
            //                             height: 85,
            //                             width: double.infinity,
            //                             fit: BoxFit.cover,
            //                           )),
            //                     ),
            //                     SizedBox(height: 5),
            //                     Row(
            //                       children: [
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                         Icon(
            //                           Icons.star,
            //                           color: Colors.orange,
            //                           size: 20,
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Column(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 10, 35, 0),
            //                   child: Row(
            //                     children: [
            //                       Text(
            //                         'Naruto',
            //                         style: GoogleFonts.outfit(
            //                             fontSize: 18,
            //                             fontWeight: FontWeight.w600,
            //                             color: Colors.black),
            //                       ),
            //                       SizedBox(width: 20),
            //                       Container(
            //                         height: 21,
            //                         width: 75,
            //                         decoration: BoxDecoration(
            //                             color: Colors.white,
            //                             borderRadius: BorderRadius.circular(20),
            //                             boxShadow: [
            //                               BoxShadow(
            //                                 color: Colors.black12,
            //                                 blurRadius: 15,
            //                                 spreadRadius: 0,
            //                                 offset: Offset.fromDirection(5),
            //                               )
            //                             ]),
            //                         child: Center(
            //                           child: Text(
            //                             'Numerology',
            //                             style: GoogleFonts.outfit(
            //                                 fontSize: 10,
            //                                 fontWeight: FontWeight.w500,
            //                                 color: Colors.orange),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
            //                   child: Text(
            //                     'Tamil, English',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Padding(
            //                   padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
            //                   child: Text(
            //                     'Experience: 2 Years',
            //                     style: GoogleFonts.outfit(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.w300,
            //                         color: Color(0xff898989)),
            //                   ),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Row(
            //                   children: [
            //                     Container(
            //                       height: 32,
            //                       width: 132,
            //                       decoration: BoxDecoration(
            //                           color: Colors.white,
            //                           borderRadius: BorderRadius.circular(10),
            //                           boxShadow: [
            //                             BoxShadow(
            //                               color: Colors.black12,
            //                               blurRadius: 15,
            //                               spreadRadius: 0,
            //                               offset: Offset.fromDirection(5),
            //                             )
            //                           ]),
            //                       child: Center(
            //                         child: Text(
            //                           '₹40 / Mins',
            //                           style: GoogleFonts.outfit(
            //                               fontSize: 14,
            //                               fontWeight: FontWeight.w500,
            //                               color: Colors.black),
            //                         ),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       width: 10,
            //                     ),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topLeft: Radius.circular(10),
            //                               bottomLeft: Radius.circular(10))),
            //                       child: Center(
            //                           child: Icon(
            //                         Icons.message_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       )),
            //                     ),
            //                     SizedBox(width: 2),
            //                     Container(
            //                       height: 32,
            //                       width: 36,
            //                       decoration: BoxDecoration(
            //                           gradient: LinearGradient(
            //                               colors: [
            //                                 Color(0xffF0D922),
            //                                 Color(0xffFF9933)
            //                               ],
            //                               begin: Alignment.topCenter,
            //                               end: Alignment.bottomCenter),
            //                           borderRadius: BorderRadius.only(
            //                               topRight: Radius.circular(10),
            //                               bottomRight: Radius.circular(10))),
            //                       child: Icon(
            //                         Icons.phone_outlined,
            //                         color: Colors.white,
            //                         size: 20,
            //                       ),
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),

            ListView.builder(
                padding: EdgeInsets.all(10),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: chatList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 140,
                      width: 352,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              spreadRadius: 0,
                              offset: Offset.fromDirection(5))
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        child: Image(
                                          image:
                                              AssetImage(chatList[index].image),
                                          height: 85,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 20,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 50, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      chatList[index].name,
                                      style: GoogleFonts.outfit(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      height: 21,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 15,
                                              spreadRadius: 0,
                                              offset: Offset.fromDirection(5),
                                            )
                                          ]),
                                      child: Center(
                                        child: Text(
                                          'Numerology',
                                          style: GoogleFonts.outfit(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.orange),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 110, 0),
                                child: Text(
                                  chatList[index].language,
                                  style: GoogleFonts.outfit(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff898989)),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 70, 0),
                                child: Text(
                                  'Experience: ${chatList[index].experience}',
                                  style: GoogleFonts.outfit(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff898989)),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
                                    height: 32,
                                    width: 132,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 15,
                                            spreadRadius: 0,
                                            offset: Offset.fromDirection(5),
                                          )
                                        ]),
                                    child: Center(
                                      child: Text(
                                        '₹40 / Mins',
                                        style: GoogleFonts.outfit(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 32,
                                    width: 36,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF0D922),
                                              Color(0xffFF9933)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
                                    child: Center(
                                        child: Icon(
                                      Icons.message_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                  ),
                                  SizedBox(width: 2),
                                  Container(
                                    height: 32,
                                    width: 36,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF0D922),
                                              Color(0xffFF9933)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Icon(
                                      Icons.phone_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

class ChatList {
  late String image;
  late String name;
  late String language;
  late String experience;
  ChatList(
      {required this.image,
      required this.name,
      required this.language,
      required this.experience});
}
