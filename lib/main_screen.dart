import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vcode_ui/chat.dart';
import 'package:vcode_ui/home.dart';
import 'package:vcode_ui/setting.dart';
import 'package:vcode_ui/shop.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String appbarName = 'Astrotalks';
  int selectId = 0;
  final tab = [
    const Home(),
    const Chat(),
    const Shop(),
    const Setting(),
  ];

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: Column(
        children: [
          Icon(
            icon,
            color: selectId == index
                ? Color(0xffFF9933)
                : Colors.black, // Highlight selected
          ),
          SizedBox(height: 4), // Space between icon and line
          Container(
            height: 3, // Line thickness
            width: 20, // Line width
            decoration: BoxDecoration(
              color: selectId == index
                  ? Color(0xffFF9933)
                  : Colors.transparent, // Show for selected only
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
      label: selectId == index ? "" : label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Container(
              height: 105,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xffF0D922), Color(0xffFF9933)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: AppBar(
                leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        setState(() {
                          Scaffold.of(context).openDrawer();
                        });
                      },
                      icon: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image(
                          image: AssetImage('assets/images/menu_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      )),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image(
                          image: AssetImage('assets/images/translate_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image(
                          image: AssetImage('assets/images/wallet_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ))
                ],
                backgroundColor: Colors.transparent,
                title: Text(
                  appbarName,
                  style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.41,
                      color: Colors.white),
                ),
              ))),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          width: 266,
          child: Stack(children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  height: 100, // Adjust height as needed
                  color: Colors.white, // Background color
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffD9D9D9),
                          radius: 30, // Adjust size
                        ),
                      ),
                      SizedBox(width: 16), // Space between avatar & text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Astrotalks',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              color: Colors.black45,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '+919876543210',
                            style: GoogleFonts.outfit(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffB9B5B5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey, // Color of the line
                  thickness: 2, // Line thickness
                  height: 20, // Space around the divider
                  indent: 20, // Space before the line starts
                  endIndent: 20, // Space before the line ends
                ), // Optional separator
                // Other drawer items here
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage('assets/images/person_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('My Profile',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Profile tapped");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image:
                              AssetImage('assets/images/wallet_bal_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('Wallet Balance',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Wallet Balance tapped");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage(
                              'assets/images/order_history_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('Order History',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Order History tapped");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage(
                              'assets/images/customer_support_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('Customer Support',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Customer Support tapped");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image:
                              AssetImage('assets/images/Refer_Earn_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('Refer & Earn',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Refer & Earn tapped");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage(
                              'assets/images/Send_Feedback_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('Send Feedback',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Send Feedback tapped");
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 46, // Adjust height
                    width: 242, // Adjust width
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4, // Shadow effect
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      leading: SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                          image: AssetImage('assets/images/Settings_icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('Settings',
                          style: GoogleFonts.outfit(
                              color: Color(0xff8A8A8A),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      onTap: () {
                        print("Settings tapped");
                      },
                    ),
                  ),
                ),
                SizedBox(height: 170),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 55, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Follow us  and we will follow you',
                        style: GoogleFonts.outfit(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.41,
                            color: Color(0xff8A8A8A)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 38,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                padding: EdgeInsets.all(10)),
                            onPressed: () {},
                            child: Image(
                                image: AssetImage(
                                    'assets/images/whatsapp-8.png'))),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 38,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                padding: EdgeInsets.all(10)),
                            onPressed: () {},
                            child: Image(
                                image: AssetImage(
                                    'assets/images/instagram-2016-5.png'))),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 38,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                padding: EdgeInsets.all(10)),
                            onPressed: () {},
                            child: Image(
                                image: AssetImage(
                                    'assets/images/youtube-icon-5.png'))),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                        width: 38,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                padding: EdgeInsets.all(10)),
                            onPressed: () {},
                            child: Image(
                                image: AssetImage('assets/images/Vector.png'))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
      body: tab[selectId],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectId,
        onTap: (index) {
          setState(() {
            selectId = index;
            // print(SelectId);
            switch (index) {
              case 0:
                {
                  appbarName = 'Astrotalks';
                }
                break;
              case 1:
                {
                  appbarName = 'Numerology';
                }
                break;
              case 2:
                {
                  appbarName = 'Shop';
                }
                break;
              case 3:
                {
                  appbarName = 'Setting';
                }
                break;
            }
          });
        },
        fixedColor: Color(0xffFF9933),
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Color(0xff8A8A8A),
        showUnselectedLabels: true,
        unselectedLabelStyle: GoogleFonts.outfit(
          fontSize: 12,
          color: Color(0xff8A8A8A),
          fontWeight: FontWeight.w400,
          letterSpacing: -0.24,
        ),
        items: [
          _buildNavItem(Icons.home, "Home", 0),
          _buildNavItem(Icons.chat, "Chat", 1),
          _buildNavItem(Icons.shop, "Shop", 2),
          _buildNavItem(Icons.settings, "Setting", 3),
        ],
      ),
    );
  }
}
