import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool songsIconGanesha = true;
  bool songsIconGaneshaTwo = true;
  bool songsIconShiva = true;
  bool songsIconMurugan = true;
  bool songsIconHanuman = true;

  bool movieGoodLuckGaneshaOne = true;
  bool movieGoodLuckGaneshaTwo = true;
  bool movieGoodLuckGaneshaThree = true;

  bool braceletOne = true;
  bool braceletTwo = true;
  bool braceletThree = true;
  bool braceletFour = true;

  bool buyOne = true;
  bool buyTwo = true;
  bool buyThree = true;
  bool buyFour = true;

  bool numerologyContainerColor = true;
  bool astrologyContainerColor = true;
  bool tarotReadingContainerColor = true;
  bool palmistryContainerColor = true;
  bool gemologyContainerColor = true;

  List<Map<String, String>> topAstrologerList = [
    {
      'image': 'assets/images/Ramesh.png',
      'name': 'Ramesh',
      'category': 'Numerology',
      'costPerMins': '₹40 / Mins'
    },
    {
      'image': 'assets/images/Ruby.png',
      'name': 'Ruby',
      'category': 'Astrology',
      'costPerMins': '₹40 / Mins'
    },
    {
      'image': 'assets/images/Naruto.png',
      'name': 'Naruto',
      'category': 'Gemology',
      'costPerMins': '₹40 / Mins'
    },
    {
      'image': 'assets/images/Shalini.png',
      'name': 'Shalini',
      'category': 'Palmistry',
      'costPerMins': '₹40 / Mins'
    },
    {
      'image': 'assets/images/Sara.png',
      'name': 'Sara',
      'category': 'Gemology',
      'costPerMins': '₹40 / Mins'
    },
  ];

  List<Map<String, String>> songsList = [
    {
      'image': 'assets/images/Ganesha_Songs_2.jpg',
      'songsName': 'Sukhkarta Dukh..',
      'singerNames': 'Anuradha Paudwal,.',
      'time': '2 min 17 sec',
    },
    {
      'image': 'assets/images/shiva_Songe.jpg',
      'songsName': 'Sukhkarta Dukh..',
      'singerNames': 'Anuradha Paudwal,.',
      'time': '2 min 17 sec',
    },
    {
      'image': 'assets/images/murugan_Songe.jpg',
      'songsName': 'Sukhkarta Dukh..',
      'singerNames': 'Anuradha Paudwal,.',
      'time': '2 min 17 sec',
    },
    {
      'image': 'assets/images/hanuman_Songe.jpeg',
      'songsName': 'Sukhkarta Dukh..',
      'singerNames': 'Anuradha Paudwal,.',
      'time': '2 min 17 sec',
    },
    {
      'image': 'assets/images/Ganesha_Songs_2.jpg',
      'songsName': 'Sukhkarta Dukh..',
      'singerNames': 'Anuradha Paudwal,.',
      'time': '2 min 17 sec',
    },
  ];

  List<Map<String, String>> moviesList = [
    {
      'image': 'assets/images/Good_Luck_ Ganesha_movie.jpg',
      'moviesName': 'Good Luck Ganesha',
      'directorName': 'Anuradha Paudwal, ...',
      'time': '2 min 17 sec'
    },
    {
      'image': 'assets/images/mookuthi_amman_movie.jpg',
      'moviesName': 'Mookuthi Amman',
      'directorName': 'Anuradha Paudwal, ...',
      'time': '2 min 17 sec'
    },
    {
      'image': 'assets/images/krishna_movies.jpg',
      'moviesName': 'Krishna Aur Kans',
      'directorName': 'Anuradha Paudwal, ...',
      'time': '2 min 17 sec'
    },
  ];

  List<Map<String, dynamic>> devotionalProducts = [
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
  List<bool> moviePlayStates = [];
  List<bool> songsPlayStates = [];

  // List<Map<String, String>> astrologerProblemList = [
  //   {'image': 'assets/images/Job_icon.png', 'name': 'Job'},
  //   {'image': 'assets/images/Money_icon.png', 'name': 'Money'},
  //   {'image': 'assets/images/House_icon.png', 'name': 'House'},
  //   {'image': 'assets/images/Health_icon.png', 'name': 'Health'},
  //   {'image': 'assets/images/Ghost_icon.png', 'name': 'Ghost'},
  //   {'image': 'assets/images/Marriage_icon.png', 'name': 'Marriage'},
  //   {'image': 'assets/images/Family_Issues_icon.png', 'name': 'Family Issues'},
  //   {'image': 'assets/images/Business_icon.png', 'name': 'Business'},
  //   {'image': 'assets/images/Depression_icon.png', 'name': 'Depression'},
  // ]
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moviePlayStates = List.generate(moviesList.length, (index) => false);
    songsPlayStates = List.generate(songsList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: 184,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffFF9933), Color(0xffF0D922)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/Frame_14.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )),
            Container(
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 200, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Search astrologer for problem',
                        style: GoogleFonts.outfit(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            letterSpacing: -0.42),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 250, 0, 0),
                  // child: GridView.builder(
                  //     shrinkWrap: true,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 3,
                  //       crossAxisSpacing: 5,
                  //       mainAxisSpacing: 5,
                  //       mainAxisExtent: 40,
                  //     ),
                  //     itemCount: astrologerProblemList.length,
                  //     itemBuilder: (BuildContext context, index) {
                  //       final problem = astrologerProblemList[index];
                  //
                  //       return SizedBox(
                  //         height: 27,
                  //         child: ElevatedButton(
                  //             onPressed: () {},
                  //             style: ElevatedButton.styleFrom(
                  //               backgroundColor: Colors.white,
                  //               shape: RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   side: BorderSide(
                  //                       color: Color(0xffB9B5B5), width: 1)),
                  //               elevation: 3,
                  //             ),
                  //             child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 SizedBox(
                  //                   height: 16,
                  //                   width: 16,
                  //                   child: Image(
                  //                     image: AssetImage(problem['image']!),
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //                 SizedBox(width: 5),
                  //                 Text(
                  //                   problem['name']!,
                  //                   style: GoogleFonts.outfit(
                  //                       fontSize: 12,
                  //                       fontWeight: FontWeight.w400,
                  //                       color: Color(0xffB9B5B5)),
                  //                 )
                  //               ],
                  //             )),
                  //       );
                  //     })

                  child: Column(
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/Job_icon.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Job',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                          SizedBox(width: 5),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Money_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Money',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                          SizedBox(width: 5),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/House_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'House',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Ghost_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Ghost',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                          SizedBox(width: 5),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Marriage_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Marriage',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                          SizedBox(width: 5),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Health_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Health',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Family_Issues_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Family Issues',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                          SizedBox(width: 5),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Business_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Business',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(
                                        color: Color(0xffB9B5B5), width: 1)),
                                elevation: 3,
                              ),
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/images/Depression_icon.png')),
                                  SizedBox(width: 10),
                                  Text(
                                    'Depression',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffB9B5B5)),
                                  )
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 450, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Search astrologer by category',
                        style: GoogleFonts.outfit(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.42),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 500, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                numerologyContainerColor =
                                    !numerologyContainerColor;
                                print('Numerology');
                              });
                            },
                            child: Container(
                              height: 76,
                              width: 80,
                              decoration: BoxDecoration(
                                gradient: numerologyContainerColor
                                    ? LinearGradient(
                                        colors: [Colors.white, Colors.white])
                                    : LinearGradient(colors: [
                                        Color(0xffF0D922),
                                        Color(0xffFF9933)
                                      ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .black26, // Shadow color with opacity
                                    spreadRadius:
                                        3, // How much the shadow spreads
                                    blurRadius: 6, // Soften the shadow
                                    offset: Offset(
                                        2, 4), // Position of shadow (X, Y)
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/Numerology.png"),
                                      height: 38,
                                      width: 37,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Numerology',
                                      style: GoogleFonts.outfit(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () {
                              setState(() {
                                astrologyContainerColor =
                                    !astrologyContainerColor;
                                print('Astrology');
                              });
                            },
                            child: Container(
                              height: 76,
                              width: 80,
                              decoration: BoxDecoration(
                                gradient: astrologyContainerColor
                                    ? LinearGradient(
                                        colors: [Colors.white, Colors.white])
                                    : LinearGradient(colors: [
                                        Color(0xffF0D922),
                                        Color(0xffFF9933)
                                      ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .black26, // Shadow color with opacity
                                    spreadRadius:
                                        3, // How much the shadow spreads
                                    blurRadius: 6, // Soften the shadow
                                    offset: Offset(
                                        2, 4), // Position of shadow (X, Y)
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/Astrology.png"),
                                      height: 38,
                                      width: 37,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Astrology',
                                      style: GoogleFonts.outfit(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () {
                              setState(() {
                                print('Tarot Reading');
                                tarotReadingContainerColor =
                                    !tarotReadingContainerColor;
                              });
                            },
                            child: Container(
                              height: 76,
                              width: 80,
                              decoration: BoxDecoration(
                                gradient: tarotReadingContainerColor
                                    ? LinearGradient(
                                        colors: [Colors.white, Colors.white])
                                    : LinearGradient(colors: [
                                        Color(0xffF0D922),
                                        Color(0xffFF9933)
                                      ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .black26, // Shadow color with opacity
                                    spreadRadius:
                                        3, // How much the shadow spreads
                                    blurRadius: 6, // Soften the shadow
                                    offset: Offset(
                                        2, 4), // Position of shadow (X, Y)
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/Tarot_Reading.png"),
                                      height: 38,
                                      width: 37,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Tarot Reading',
                                      style: GoogleFonts.outfit(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                palmistryContainerColor =
                                    !palmistryContainerColor;
                                print('Palmistry');
                              });
                            },
                            child: Container(
                              height: 76,
                              width: 80,
                              decoration: BoxDecoration(
                                gradient: palmistryContainerColor
                                    ? LinearGradient(
                                        colors: [Colors.white, Colors.white])
                                    : LinearGradient(colors: [
                                        Color(0xffF0D922),
                                        Color(0xffFF9933)
                                      ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .black26, // Shadow color with opacity
                                    spreadRadius:
                                        3, // How much the shadow spreads
                                    blurRadius: 6, // Soften the shadow
                                    offset: Offset(
                                        2, 4), // Position of shadow (X, Y)
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/Palmistry.png"),
                                      height: 38,
                                      width: 37,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Palmistry',
                                      style: GoogleFonts.outfit(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 30),
                          InkWell(
                            onTap: () {
                              setState(() {
                                gemologyContainerColor =
                                    !gemologyContainerColor;
                                print('Gemology');
                              });
                            },
                            child: Container(
                              height: 76,
                              width: 80,
                              decoration: BoxDecoration(
                                gradient: gemologyContainerColor
                                    ? LinearGradient(
                                        colors: [Colors.white, Colors.white])
                                    : LinearGradient(colors: [
                                        Color(0xffF0D922),
                                        Color(0xffFF9933)
                                      ]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors
                                        .black26, // Shadow color with opacity
                                    spreadRadius:
                                        3, // How much the shadow spreads
                                    blurRadius: 6, // Soften the shadow
                                    offset: Offset(
                                        2, 4), // Position of shadow (X, Y)
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/Gemology.png"),
                                      height: 38,
                                      width: 37,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Gemology',
                                      style: GoogleFonts.outfit(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 690, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Top astrologer',
                        style: GoogleFonts.outfit(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.41,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 730, 0, 0),

                  child: CarouselSlider(
                      items: topAstrologerList.map((item) {
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            width: 124,
                            height: 204,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xffF0D922),
                                      Color(0xffFF9933)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(60)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: CircleAvatar(
                                        radius: 45,
                                        backgroundImage: AssetImage(item[
                                            'image']!), // Use a local image
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 5,
                                      child: SizedBox(
                                        height: 36,
                                        width: 36,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size(36, 36),
                                            backgroundColor: Colors.white,
                                            shape: CircleBorder(),
                                            padding: EdgeInsets.all(5),
                                          ),
                                          onPressed: () {},
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/images/mess.png')),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 0),
                                Text(
                                  item['name']!,
                                  style: GoogleFonts.outfit(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                  height: 21,
                                  width: 90,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          padding: EdgeInsets.fromLTRB(
                                              10, 0, 10, 0)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Text(
                                          item['category']!,
                                          style: GoogleFonts.outfit(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffFCA530),
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  item['costPerMins']!,
                                  style: GoogleFonts.outfit(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        });
                      }).toList(),
                      options: CarouselOptions(
                        // height: 226.0, // Set the height of the carousel
                        enlargeCenterPage:
                            false, // Don't enlarge the center page
                        viewportFraction: 0.37, // Show two slides at a time
                        enableInfiniteScroll:
                            false, // Disable infinite scrolling
                        autoPlay: false, // Disable auto play
                        initialPage: 0, // Start with the first slide
                        pageSnapping: false,
                        padEnds: false,
                      )),

                  // child: Container(
                  //   height: 210,
                  //   width: double.infinity,
                  //   color: Colors.transparent,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       /// 1
                  //       Padding(
                  //         padding: const EdgeInsets.all(7),
                  //         child: Container(
                  //           width: 124,
                  //           height: 204,
                  //           decoration: BoxDecoration(
                  //               gradient: LinearGradient(
                  //                   colors: [
                  //                     Color(0xffF0D922),
                  //                     Color(0xffFF9933)
                  //                   ],
                  //                   begin: Alignment.topCenter,
                  //                   end: Alignment.bottomCenter),
                  //               borderRadius: BorderRadius.circular(60)),
                  //           child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Stack(
                  //                 alignment: Alignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(10),
                  //                     child: CircleAvatar(
                  //                       radius: 45,
                  //                       backgroundImage: AssetImage(
                  //                           'assets/images/Ramesh.png'), // Use a local image
                  //                     ),
                  //                   ),
                  //                   Positioned(
                  //                     bottom: 10,
                  //                     right: 5,
                  //                     child: SizedBox(
                  //                       height: 36,
                  //                       width: 36,
                  //                       child: ElevatedButton(
                  //                         style: ElevatedButton.styleFrom(
                  //                           fixedSize: Size(36, 36),
                  //                           backgroundColor: Colors.white,
                  //                           shape: CircleBorder(),
                  //                           padding: EdgeInsets.all(5),
                  //                         ),
                  //                         onPressed: () {},
                  //                         child: Image(
                  //                             image: AssetImage(
                  //                                 'assets/images/mess.png')),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(height: 0),
                  //               Text(
                  //                 "Ramesh",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 16,
                  //                     fontWeight: FontWeight.w600,
                  //                     color: Colors.white),
                  //               ),
                  //               SizedBox(height: 5),
                  //               SizedBox(
                  //                 height: 21,
                  //                 width: 90,
                  //                 child: ElevatedButton(
                  //                     onPressed: () {},
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor: Colors.white,
                  //                         padding: EdgeInsets.fromLTRB(
                  //                             10, 0, 10, 0)),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(0),
                  //                       child: Text(
                  //                         'Numerology',
                  //                         style: GoogleFonts.outfit(
                  //                           fontSize: 10,
                  //                           fontWeight: FontWeight.w400,
                  //                           color: Color(0xffFCA530),
                  //                         ),
                  //                       ),
                  //                     )),
                  //               ),
                  //               SizedBox(height: 5),
                  //               Text(
                  //                 "₹40 / Mins",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 10,
                  //                     fontWeight: FontWeight.w400,
                  //                     color: Colors.white),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //
                  //       /// 2
                  //       Padding(
                  //         padding: const EdgeInsets.all(7),
                  //         child: Container(
                  //           width: 124,
                  //           height: 204,
                  //           decoration: BoxDecoration(
                  //               gradient: LinearGradient(
                  //                   colors: [
                  //                     Color(0xffF0D922),
                  //                     Color(0xffFF9933)
                  //                   ],
                  //                   begin: Alignment.topCenter,
                  //                   end: Alignment.bottomCenter),
                  //               borderRadius: BorderRadius.circular(60)),
                  //           child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Stack(
                  //                 alignment: Alignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(10),
                  //                     child: CircleAvatar(
                  //                       radius: 45,
                  //                       backgroundImage: AssetImage(
                  //                           'assets/images/Ruby.png'), // Use a local image
                  //                     ),
                  //                   ),
                  //                   Positioned(
                  //                     bottom: 10,
                  //                     right: 5,
                  //                     child: SizedBox(
                  //                       height: 36,
                  //                       width: 36,
                  //                       child: ElevatedButton(
                  //                         style: ElevatedButton.styleFrom(
                  //                           fixedSize: Size(36, 36),
                  //                           backgroundColor: Colors.white,
                  //                           shape: CircleBorder(),
                  //                           padding: EdgeInsets.all(5),
                  //                         ),
                  //                         onPressed: () {},
                  //                         child: Image(
                  //                             image: AssetImage(
                  //                                 'assets/images/mess.png')),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(height: 0),
                  //               Text(
                  //                 "Ruby",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 16,
                  //                     fontWeight: FontWeight.w600,
                  //                     color: Colors.white),
                  //               ),
                  //               SizedBox(height: 5),
                  //               SizedBox(
                  //                 height: 21,
                  //                 width: 90,
                  //                 child: ElevatedButton(
                  //                     onPressed: () {},
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor: Colors.white,
                  //                         padding: EdgeInsets.fromLTRB(
                  //                             10, 0, 10, 0)),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(0),
                  //                       child: Text(
                  //                         'Astrology',
                  //                         style: GoogleFonts.outfit(
                  //                           fontSize: 10,
                  //                           fontWeight: FontWeight.w400,
                  //                           color: Color(0xffFCA530),
                  //                         ),
                  //                       ),
                  //                     )),
                  //               ),
                  //               SizedBox(height: 5),
                  //               Text(
                  //                 "₹40 / Mins",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 10,
                  //                     fontWeight: FontWeight.w400,
                  //                     color: Colors.white),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //
                  //       /// 3
                  //       Padding(
                  //         padding: const EdgeInsets.all(7),
                  //         child: Container(
                  //           width: 124,
                  //           height: 204,
                  //           decoration: BoxDecoration(
                  //               gradient: LinearGradient(
                  //                   colors: [
                  //                     Color(0xffF0D922),
                  //                     Color(0xffFF9933)
                  //                   ],
                  //                   begin: Alignment.topCenter,
                  //                   end: Alignment.bottomCenter),
                  //               borderRadius: BorderRadius.circular(60)),
                  //           child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Stack(
                  //                 alignment: Alignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(10),
                  //                     child: CircleAvatar(
                  //                       radius: 45,
                  //                       backgroundImage: AssetImage(
                  //                           'assets/images/Naruto.png'), // Use a local image
                  //                     ),
                  //                   ),
                  //                   Positioned(
                  //                     bottom: 10,
                  //                     right: 5,
                  //                     child: SizedBox(
                  //                       height: 36,
                  //                       width: 36,
                  //                       child: ElevatedButton(
                  //                         style: ElevatedButton.styleFrom(
                  //                           fixedSize: Size(36, 36),
                  //                           backgroundColor: Colors.white,
                  //                           shape: CircleBorder(),
                  //                           padding: EdgeInsets.all(5),
                  //                         ),
                  //                         onPressed: () {},
                  //                         child: Image(
                  //                             image: AssetImage(
                  //                                 'assets/images/mess.png')),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(height: 0),
                  //               Text(
                  //                 "Naruto",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 16,
                  //                     fontWeight: FontWeight.w600,
                  //                     color: Colors.white),
                  //               ),
                  //               SizedBox(height: 5),
                  //               SizedBox(
                  //                 height: 21,
                  //                 width: 90,
                  //                 child: ElevatedButton(
                  //                     onPressed: () {},
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor: Colors.white,
                  //                         padding: EdgeInsets.fromLTRB(
                  //                             10, 0, 10, 0)),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(0),
                  //                       child: Text(
                  //                         'Gemology',
                  //                         style: GoogleFonts.outfit(
                  //                           fontSize: 10,
                  //                           fontWeight: FontWeight.w400,
                  //                           color: Color(0xffFCA530),
                  //                         ),
                  //                       ),
                  //                     )),
                  //               ),
                  //               SizedBox(height: 5),
                  //               Text(
                  //                 "₹40 / Mins",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 10,
                  //                     fontWeight: FontWeight.w400,
                  //                     color: Colors.white),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //
                  //       /// 4
                  //       Padding(
                  //         padding: const EdgeInsets.all(7),
                  //         child: Container(
                  //           width: 124,
                  //           height: 204,
                  //           decoration: BoxDecoration(
                  //               gradient: LinearGradient(
                  //                   colors: [
                  //                     Color(0xffF0D922),
                  //                     Color(0xffFF9933)
                  //                   ],
                  //                   begin: Alignment.topCenter,
                  //                   end: Alignment.bottomCenter),
                  //               borderRadius: BorderRadius.circular(60)),
                  //           child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Stack(
                  //                 alignment: Alignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(10),
                  //                     child: CircleAvatar(
                  //                       radius: 45,
                  //                       backgroundImage: AssetImage(
                  //                           'assets/images/Shalini.png'), // Use a local image
                  //                     ),
                  //                   ),
                  //                   Positioned(
                  //                     bottom: 10,
                  //                     right: 5,
                  //                     child: SizedBox(
                  //                       height: 36,
                  //                       width: 36,
                  //                       child: ElevatedButton(
                  //                         style: ElevatedButton.styleFrom(
                  //                           fixedSize: Size(36, 36),
                  //                           backgroundColor: Colors.white,
                  //                           shape: CircleBorder(),
                  //                           padding: EdgeInsets.all(5),
                  //                         ),
                  //                         onPressed: () {},
                  //                         child: Image(
                  //                             image: AssetImage(
                  //                                 'assets/images/mess.png')),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(height: 0),
                  //               Text(
                  //                 "Shalini",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 16,
                  //                     fontWeight: FontWeight.w600,
                  //                     color: Colors.white),
                  //               ),
                  //               SizedBox(height: 5),
                  //               SizedBox(
                  //                 height: 21,
                  //                 width: 90,
                  //                 child: ElevatedButton(
                  //                     onPressed: () {},
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor: Colors.white,
                  //                         padding: EdgeInsets.fromLTRB(
                  //                             10, 0, 10, 0)),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(0),
                  //                       child: Text(
                  //                         'Palmistry',
                  //                         style: GoogleFonts.outfit(
                  //                           fontSize: 10,
                  //                           fontWeight: FontWeight.w400,
                  //                           color: Color(0xffFCA530),
                  //                         ),
                  //                       ),
                  //                     )),
                  //               ),
                  //               SizedBox(height: 5),
                  //               Text(
                  //                 "₹40 / Mins",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 10,
                  //                     fontWeight: FontWeight.w400,
                  //                     color: Colors.white),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //
                  //       /// 5
                  //       Padding(
                  //         padding: const EdgeInsets.all(7),
                  //         child: Container(
                  //           width: 124,
                  //           height: 204,
                  //           decoration: BoxDecoration(
                  //               gradient: LinearGradient(
                  //                   colors: [
                  //                     Color(0xffF0D922),
                  //                     Color(0xffFF9933)
                  //                   ],
                  //                   begin: Alignment.topCenter,
                  //                   end: Alignment.bottomCenter),
                  //               borderRadius: BorderRadius.circular(60)),
                  //           child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Stack(
                  //                 alignment: Alignment.center,
                  //                 children: [
                  //                   Padding(
                  //                     padding: const EdgeInsets.all(10),
                  //                     child: CircleAvatar(
                  //                       radius: 45,
                  //                       backgroundImage: AssetImage(
                  //                           'assets/images/Sara.png'), // Use a local image
                  //                     ),
                  //                   ),
                  //                   Positioned(
                  //                     bottom: 10,
                  //                     right: 5,
                  //                     child: SizedBox(
                  //                       height: 36,
                  //                       width: 36,
                  //                       child: ElevatedButton(
                  //                         style: ElevatedButton.styleFrom(
                  //                           fixedSize: Size(36, 36),
                  //                           backgroundColor: Colors.white,
                  //                           shape: CircleBorder(),
                  //                           padding: EdgeInsets.all(5),
                  //                         ),
                  //                         onPressed: () {},
                  //                         child: Image(
                  //                             image: AssetImage(
                  //                                 'assets/images/mess.png')),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(height: 0),
                  //               Text(
                  //                 "Sara",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 16,
                  //                     fontWeight: FontWeight.w600,
                  //                     color: Colors.white),
                  //               ),
                  //               SizedBox(height: 5),
                  //               SizedBox(
                  //                 height: 21,
                  //                 width: 90,
                  //                 child: ElevatedButton(
                  //                     onPressed: () {},
                  //                     style: ElevatedButton.styleFrom(
                  //                         backgroundColor: Colors.white,
                  //                         padding: EdgeInsets.fromLTRB(
                  //                             10, 0, 10, 0)),
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(0),
                  //                       child: Text(
                  //                         'Gemology',
                  //                         style: GoogleFonts.outfit(
                  //                           fontSize: 10,
                  //                           fontWeight: FontWeight.w400,
                  //                           color: Color(0xffFCA530),
                  //                         ),
                  //                       ),
                  //                     )),
                  //               ),
                  //               SizedBox(height: 5),
                  //               Text(
                  //                 "₹40 / Mins",
                  //                 style: GoogleFonts.outfit(
                  //                     fontSize: 10,
                  //                     fontWeight: FontWeight.w400,
                  //                     color: Colors.white),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 950, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Panjakam',
                        style: GoogleFonts.outfit(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.41,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 1000, 0, 0),
                  child: Container(
                    height: 111,
                    width: 352,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xffF0D922), Color(0xffFF9933)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.shade50, // Shadow color
                          spreadRadius: 0, // How much the shadow spreads
                          blurRadius: 15, // Soft blur effect
                          offset:
                              Offset.fromDirection(5), // Shadow position (X, Y)
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                              child: Image(
                                  image: AssetImage('assets/images/sun.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                              child: Text(
                                '10:30 AM - 12:00 PM',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.odibeeSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 5, 0, 0),
                              child: Text(
                                'Auspicious Timing',
                                style: GoogleFonts.outfit(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Container(
                            color: Colors.black12,
                            height: 60,
                            width: 3,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(35, 20, 0, 0),
                              child: Image(
                                  image: AssetImage('assets/images/moon.png')),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 0, 0),
                              child: Text(
                                '3:00 PM - 4:30 PM',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.odibeeSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 5, 0, 0),
                              child: Text(
                                'Inauspicious Timing',
                                style: GoogleFonts.outfit(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 1150, 0, 0),
                  child: Container(
                    height: 222,
                    width: 352,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Color(0xffF0D922), Color(0xffFF9933)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.shade50, // Shadow color
                          spreadRadius: 0, // How much the shadow spreads
                          blurRadius: 15, // Soft blur effect
                          offset:
                              Offset.fromDirection(5), // Shadow position (X, Y)
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(55, 30, 0, 0),
                                  child: Text(
                                    '9th Lunar Day',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.odibeeSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35, 5, 0, 0),
                                  child: Text(
                                    'Tithi',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                              child: Container(
                                color: Colors.black12,
                                height: 60,
                                width: 3,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 10, 0, 0),
                                  child: Text(
                                    'Rohini',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.odibeeSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 5, 0, 0),
                                  child: Text(
                                    'Nakshatra',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Container(
                            height: 3,
                            width: 300,
                            color: Colors.black12,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 30, 0, 0),
                                  child: Text(
                                    'Siddha Yoga',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.odibeeSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(35, 5, 0, 0),
                                  child: Text(
                                    'Yoga',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
                              child: Container(
                                color: Colors.black12,
                                height: 60,
                                width: 3,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 10, 0, 0),
                                  child: Text(
                                    'Garaja',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.odibeeSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 0, 0),
                                  child: Text(
                                    'Karana',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                              child: Container(
                                color: Colors.black12,
                                height: 60,
                                width: 3,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 10, 0, 0),
                                  child: Text(
                                    'Tuesday',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.odibeeSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 5, 0, 0),
                                  child: Text(
                                    'Vara',
                                    style: GoogleFonts.outfit(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 1400, 0, 0),
                  child: Text(
                    'Songs',
                    style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 1450, 0, 0),

                  /// new method

                  child: CarouselSlider(
                      items: List.generate(songsList.length, (index) {
                        final item = songsList[index];
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            height: 202,
                            width: 168,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffF0D922),
                                    Color(0xffFF9933)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.orange, // Border color
                                width: 1,
                              ),
                            ),
                            child: Stack(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      child: Image(
                                        image: AssetImage(item['image']!),
                                        height: 140,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
                                            child: Text(
                                              item['songsName']!,
                                              style: GoogleFonts.outfit(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                2, 0, 0, 0),
                                            child: Text(
                                              item['singerNames']!,
                                              style: GoogleFonts.outfit(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 0),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 40, 0),
                                            child: Text(
                                              item['time']!,
                                              style: GoogleFonts.outfit(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 10, 0),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 38,
                                              width: 38,
                                              child: IconButton(
                                                  style: IconButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.white,
                                                      shape: CircleBorder()),
                                                  onPressed: () {
                                                    setState(() {
                                                      songsPlayStates[index] =
                                                          !songsPlayStates[
                                                              index];
                                                    });
                                                  },
                                                  icon: Center(
                                                      child: Icon(
                                                    songsPlayStates[index]
                                                        ? Icons.pause
                                                        : Icons.play_arrow,
                                                    size: 22,
                                                    color: Colors.orange,
                                                  ))),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ]),
                          );
                        });
                      }),
                      options: CarouselOptions(
                        enlargeCenterPage: false,
                        viewportFraction: 0.50,
                        enableInfiniteScroll: false,
                        autoPlay: false,
                        initialPage: 0,
                        pageSnapping: false,
                        padEnds: false,
                      )),

                  ///  old method

                  // child: CarouselSlider(
                  //     items: songsList.map((item) {
                  //       return Builder(builder: (BuildContext context) {
                  //         return Container(
                  //           height: 202,
                  //           width: 168,
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF0D922),
                  //                   Color(0xffFF9933)
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter),
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(
                  //               color: Colors.orange, // Border color
                  //               width: 1,
                  //             ),
                  //           ),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(item['image']!),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             item['songsName']!,
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             item['singerNames']!,
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             item['time']!,
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           0, 10, 10, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     songsIconGanesha =
                  //                                         !songsIconGanesha;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   songsIconGanesha
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.orange,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         );
                  //       });
                  //     }).toList(),
                  //     options: CarouselOptions(
                  //       enlargeCenterPage: false,
                  //       viewportFraction: 0.50,
                  //       enableInfiniteScroll: false,
                  //       autoPlay: false,
                  //       initialPage: 0,
                  //       pageSnapping: false,
                  //       padEnds: false,
                  //     )),

                  // child: Container(
                  //   height: 202,
                  //   width: double.infinity,
                  //   color: Colors.transparent,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //
                  //
                  //         child: Container(
                  //           height: 202,
                  //           width: 168,
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF0D922),
                  //                   Color(0xffFF9933)
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter),
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(
                  //               color: Colors.orange, // Border color
                  //               width: 1,
                  //             ),
                  //           ),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/Ganesha_Songs_2.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Sukhkarta Dukh..',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal,.',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           0, 10, 10, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     songsIconGanesha =
                  //                                         !songsIconGanesha;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   songsIconGanesha
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.orange,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //
                  //
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 168,
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF0D922),
                  //                   Color(0xffFF9933)
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter),
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(
                  //               color: Colors.orange, // Border color
                  //               width: 1,
                  //             ),
                  //           ),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/shiva_Songe.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Sukhkarta Dukh..',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal,.',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           0, 10, 10, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     songsIconShiva =
                  //                                         !songsIconShiva;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   songsIconShiva
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.orange,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 168,
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF0D922),
                  //                   Color(0xffFF9933)
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter),
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(
                  //               color: Colors.orange, // Border color
                  //               width: 1,
                  //             ),
                  //           ),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/murugan_Songe.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Sukhkarta Dukh..',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal,.',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           0, 10, 10, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     songsIconMurugan =
                  //                                         !songsIconMurugan;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   songsIconMurugan
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.orange,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 168,
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF0D922),
                  //                   Color(0xffFF9933)
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter),
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(
                  //               color: Colors.orange, // Border color
                  //               width: 1,
                  //             ),
                  //           ),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/hanuman_Songe.jpeg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Sukhkarta Dukh..',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal,.',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           0, 10, 10, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     songsIconHanuman =
                  //                                         !songsIconHanuman;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   songsIconHanuman
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.orange,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 168,
                  //           decoration: BoxDecoration(
                  //             gradient: LinearGradient(
                  //                 colors: [
                  //                   Color(0xffF0D922),
                  //                   Color(0xffFF9933)
                  //                 ],
                  //                 begin: Alignment.topCenter,
                  //                 end: Alignment.bottomCenter),
                  //             borderRadius: BorderRadius.circular(20),
                  //             border: Border.all(
                  //               color: Colors.orange, // Border color
                  //               width: 1,
                  //             ),
                  //           ),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/Ganesha_Songs_2.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Sukhkarta Dukh..',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               2, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal,.',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.white70,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           0, 10, 10, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.white,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     songsIconGaneshaTwo =
                  //                                         !songsIconGaneshaTwo;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   songsIconGaneshaTwo
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.orange,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 1670, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Movies & Videos',
                        style: GoogleFonts.outfit(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),

                /// new method

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 1720, 0, 0),

                  child: CarouselSlider(
                      items: List.generate(moviesList.length, (index) {
                        final item = moviesList[index];
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            height: 202,
                            width: 352,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.orange, // Border color
                                  width: 1,
                                )),
                            child: Stack(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      child: Image(
                                        image: AssetImage(item['image']!),
                                        height: 140,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 0),
                                            child: Text(
                                              item['moviesName']!,
                                              style: GoogleFonts.outfit(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Text(
                                              item['directorName']!,
                                              style: GoogleFonts.outfit(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 0),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 40, 0),
                                            child: Text(
                                              item['time']!,
                                              style: GoogleFonts.outfit(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            140, 10, 0, 0),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 38,
                                              width: 38,
                                              child: IconButton(
                                                  style: IconButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.orange,
                                                      shape: CircleBorder()),
                                                  onPressed: () {
                                                    setState(() {
                                                      moviePlayStates[index] =
                                                          !moviePlayStates[
                                                              index];
                                                      print(moviePlayStates[
                                                          index]);
                                                    });
                                                  },
                                                  icon: Center(
                                                      child: Icon(
                                                    moviePlayStates[index]
                                                        ? Icons.pause
                                                        : Icons.play_arrow,
                                                    size: 22,
                                                    color: Colors.white,
                                                  ))),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ]),
                          );
                        });
                      }).toList(),
                      options: CarouselOptions(
                        enlargeCenterPage: false,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        autoPlay: false,
                        initialPage: 0,
                        pageSnapping: false,
                        padEnds: false,
                        // enlargeFactor: 0.5,
                      )),

                  ///    old method
                  // child: CarouselSlider(
                  //     items: moviesList.map((item) {
                  //       return Builder(builder: (BuildContext context) {
                  //         return Container(
                  //           height: 202,
                  //           width: 352,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               border: Border.all(
                  //                 color: Colors.orange, // Border color
                  //                 width: 1,
                  //               )),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(item['image']!),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               20, 0, 0, 0),
                  //                           child: Text(
                  //                             item['moviesName']!,
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               15, 0, 0, 0),
                  //                           child: Text(
                  //                             item['directorName']!,
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             item['time']!,
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           140, 10, 0, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.orange,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     movieGoodLuckGaneshaOne =
                  //                                         !movieGoodLuckGaneshaOne;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   movieGoodLuckGaneshaOne
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.white,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         );
                  //       });
                  //     }).toList(),
                  //     options: CarouselOptions(
                  //       enlargeCenterPage: false,
                  //       viewportFraction: 1.0,
                  //       enableInfiniteScroll: false,
                  //       autoPlay: false,
                  //       initialPage: 0,
                  //       pageSnapping: false,
                  //       padEnds: false,
                  //       // enlargeFactor: 0.5,
                  //     )),

                  // child: Container(
                  //   height: 202,
                  //   width: double.infinity,
                  //   color: Colors.transparent,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 352,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               border: Border.all(
                  //                 color: Colors.orange, // Border color
                  //                 width: 1,
                  //               )),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/Good_Luck_ Ganesha_movie.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               20, 0, 0, 0),
                  //                           child: Text(
                  //                             'Good Luck Ganesha',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               15, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal, ...',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           140, 10, 0, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.orange,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     movieGoodLuckGaneshaOne =
                  //                                         !movieGoodLuckGaneshaOne;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   movieGoodLuckGaneshaOne
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.white,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 352,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               border: Border.all(
                  //                 color: Colors.orange, // Border color
                  //                 width: 1,
                  //               )),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/mookuthi_amman_movie.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               20, 0, 0, 0),
                  //                           child: Text(
                  //                             'Mookuthi Amman',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               15, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal, ...',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           140, 10, 0, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.orange,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     movieGoodLuckGaneshaTwo =
                  //                                         !movieGoodLuckGaneshaTwo;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   movieGoodLuckGaneshaTwo
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.white,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  //         child: Container(
                  //           height: 202,
                  //           width: 352,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(20),
                  //               border: Border.all(
                  //                 color: Colors.orange, // Border color
                  //                 width: 1,
                  //               )),
                  //           child: Stack(children: [
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               children: [
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(0),
                  //                   child: ClipRRect(
                  //                     borderRadius: BorderRadius.only(
                  //                       topLeft: Radius.circular(20),
                  //                       topRight: Radius.circular(20),
                  //                     ),
                  //                     child: Image(
                  //                       image: AssetImage(
                  //                           'assets/images/krishna_movies.jpg'),
                  //                       height: 140,
                  //                       width: double.infinity,
                  //                       fit: BoxFit.cover,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.start,
                  //                   children: [
                  //                     Column(
                  //                       children: [
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               20, 0, 0, 0),
                  //                           child: Text(
                  //                             'krishna',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 12,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 4),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               15, 0, 0, 0),
                  //                           child: Text(
                  //                             'Anuradha Paudwal, ...',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(height: 0),
                  //                         Padding(
                  //                           padding: const EdgeInsets.fromLTRB(
                  //                               0, 0, 40, 0),
                  //                           child: Text(
                  //                             '2 min 17 sec',
                  //                             style: GoogleFonts.outfit(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.w400,
                  //                               color: Colors.black,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                     Padding(
                  //                       padding: const EdgeInsets.fromLTRB(
                  //                           140, 10, 0, 0),
                  //                       child: Row(
                  //                         children: [
                  //                           SizedBox(
                  //                             height: 38,
                  //                             width: 38,
                  //                             child: IconButton(
                  //                                 style: IconButton.styleFrom(
                  //                                     backgroundColor:
                  //                                         Colors.orange,
                  //                                     shape: CircleBorder()),
                  //                                 onPressed: () {
                  //                                   setState(() {
                  //                                     movieGoodLuckGaneshaThree =
                  //                                         !movieGoodLuckGaneshaThree;
                  //                                   });
                  //                                 },
                  //                                 icon: Center(
                  //                                     child: Icon(
                  //                                   movieGoodLuckGaneshaThree
                  //                                       ? Icons.pause
                  //                                       : Icons.play_arrow,
                  //                                   size: 22,
                  //                                   color: Colors.white,
                  //                                 ))),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 1940, 0, 0),
                  child: Column(
                    children: [
                      Text(
                        'Devotional products',
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: -0.41,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 2000, 0, 0),
                  child: CarouselSlider(
                      items: devotionalProducts.map((item) {
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
                                      image: AssetImage(item['image']),
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
                                    item['name'],
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
                                    '₹${item['amount']} /-',
                                    style: GoogleFonts.outfit(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      braceletOne = !braceletOne;
                                      buyOne = !buyOne;
                                    });
                                  },
                                  child: Container(
                                    height: 31,
                                    width: 144,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xffF0D922),
                                              Color(0xffFF9933)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        borderRadius: BorderRadius.circular(20),
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
                      )),
                  // child: Column(
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
                  //                 InkWell(
                  //                   onTap: () {
                  //                     setState(() {
                  //                       braceletOne = !braceletOne;
                  //                       buyOne = !buyOne;
                  //                     });
                  //                   },
                  //                   child: Container(
                  //                     height: 31,
                  //                     width: 144,
                  //                     decoration: BoxDecoration(
                  //                         gradient: braceletOne
                  //                             ? LinearGradient(
                  //                                 colors: [
                  //                                     Color(0xffF0D922),
                  //                                     Color(0xffFF9933)
                  //                                   ],
                  //                                 begin: Alignment.topCenter,
                  //                                 end: Alignment.bottomCenter)
                  //                             : LinearGradient(colors: [
                  //                                 Colors.white,
                  //                                 Colors.white
                  //                               ]),
                  //                         borderRadius:
                  //                             BorderRadius.circular(20),
                  //                         border: Border.all(
                  //                           color:
                  //                               Colors.orange, // Border color
                  //                           width: 1,
                  //                         )),
                  //                     child: Center(
                  //                       child: Text(
                  //                         'Buy',
                  //                         style: GoogleFonts.outfit(
                  //                             fontSize: 12,
                  //                             fontWeight: FontWeight.w500,
                  //                             color: buyOne
                  //                                 ? Colors.white
                  //                                 : Colors.orange),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //
                  //
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
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
                  //                           'assets/images/Pregnancy_Bracelet.png'),
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
                  //                     'Pregnancy Bracelet',
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
                  //                     '₹2,500 /-',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 10,
                  //                       fontWeight: FontWeight.w400,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 15),
                  //                 InkWell(
                  //                   onTap: () {
                  //                     setState(() {
                  //                       braceletTwo = !braceletTwo;
                  //                       buyTwo = !buyTwo;
                  //                     });
                  //                   },
                  //                   child: Container(
                  //                     height: 31,
                  //                     width: 144,
                  //                     decoration: BoxDecoration(
                  //                         gradient: braceletTwo
                  //                             ? LinearGradient(
                  //                                 colors: [
                  //                                     Color(0xffF0D922),
                  //                                     Color(0xffFF9933)
                  //                                   ],
                  //                                 begin: Alignment.topCenter,
                  //                                 end: Alignment.bottomCenter)
                  //                             : LinearGradient(colors: [
                  //                                 Colors.white,
                  //                                 Colors.white
                  //                               ]),
                  //                         borderRadius:
                  //                             BorderRadius.circular(20),
                  //                         border: Border.all(
                  //                           color:
                  //                               Colors.orange, // Border color
                  //                           width: 1,
                  //                         )),
                  //                     child: Center(
                  //                       child: Text(
                  //                         'Buy',
                  //                         style: GoogleFonts.outfit(
                  //                             fontSize: 12,
                  //                             fontWeight: FontWeight.w500,
                  //                             color: buyTwo
                  //                                 ? Colors.white
                  //                                 : Colors.orange),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //     SizedBox(height: 20),
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
                  //                           'assets/images/Rose_Quatz_Bracelet.png'),
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
                  //                     'Rose Quatz Bracelet',
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
                  //                     '₹1,549 /-',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 10,
                  //                       fontWeight: FontWeight.w400,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 15),
                  //                 InkWell(
                  //                   onTap: () {
                  //                     setState(() {
                  //                       braceletThree = !braceletThree;
                  //                       buyThree = !buyThree;
                  //                     });
                  //                   },
                  //                   child: Container(
                  //                     height: 31,
                  //                     width: 144,
                  //                     decoration: BoxDecoration(
                  //                         gradient: braceletThree
                  //                             ? LinearGradient(
                  //                                 colors: [
                  //                                     Color(0xffF0D922),
                  //                                     Color(0xffFF9933)
                  //                                   ],
                  //                                 begin: Alignment.topCenter,
                  //                                 end: Alignment.bottomCenter)
                  //                             : LinearGradient(colors: [
                  //                                 Colors.white,
                  //                                 Colors.white
                  //                               ]),
                  //                         borderRadius:
                  //                             BorderRadius.circular(20),
                  //                         border: Border.all(
                  //                           color:
                  //                               Colors.orange, // Border color
                  //                           width: 1,
                  //                         )),
                  //                     child: Center(
                  //                       child: Text(
                  //                         'Buy',
                  //                         style: GoogleFonts.outfit(
                  //                             fontSize: 12,
                  //                             fontWeight: FontWeight.w500,
                  //                             color: buyThree
                  //                                 ? Colors.white
                  //                                 : Colors.orange),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
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
                  //                           'assets/images/Carnelian_Bracelet.png'),
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
                  //                     'Carnelian Bracelet',
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
                  //                     '₹1,200 /-',
                  //                     style: GoogleFonts.outfit(
                  //                       fontSize: 10,
                  //                       fontWeight: FontWeight.w400,
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 SizedBox(height: 15),
                  //                 InkWell(
                  //                   onTap: () {
                  //                     setState(() {
                  //                       braceletFour = !braceletFour;
                  //                       buyFour = !buyFour;
                  //                     });
                  //                   },
                  //                   child: Container(
                  //                     height: 31,
                  //                     width: 144,
                  //                     decoration: BoxDecoration(
                  //                         gradient: braceletFour
                  //                             ? LinearGradient(
                  //                                 colors: [
                  //                                     Color(0xffF0D922),
                  //                                     Color(0xffFF9933)
                  //                                   ],
                  //                                 begin: Alignment.topCenter,
                  //                                 end: Alignment.bottomCenter)
                  //                             : LinearGradient(colors: [
                  //                                 Colors.white,
                  //                                 Colors.white
                  //                               ]),
                  //                         borderRadius:
                  //                             BorderRadius.circular(20),
                  //                         border: Border.all(
                  //                           color:
                  //                               Colors.orange, // Border color
                  //                           width: 1,
                  //                         )),
                  //                     child: Center(
                  //                       child: Text(
                  //                         'Buy',
                  //                         style: GoogleFonts.outfit(
                  //                             fontSize: 12,
                  //                             fontWeight: FontWeight.w500,
                  //                             color: buyFour
                  //                                 ? Colors.white
                  //                                 : Colors.orange),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // ),
                ),

                ///vvvvvv
              ]),
            )
          ],
        ),
      ),
    );
  }
}
