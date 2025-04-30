import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:vcode_ui/otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF0D922), Color(0xffFF9933)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(239, 144, 0, 0),
                    child: Image(
                      image: AssetImage('assets/images/image7.png'),
                      height: 330,
                      width: 330,

                      // width: 250,
                      // height: 250,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(320, 60, 0, 0),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Skip',
                            style: GoogleFonts.outfit(
                                color: Colors.white, fontSize: 16),
                          ))),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 94, bottom: 0, top: 97),
                    child: Image(
                      image: AssetImage('assets/images/pana.png'),
                      height: 191,
                      width: 195.58,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 348, 0, 0),
                    child: Text(
                      'Welcome back !!! ',
                      style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.90),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 396, 0, 0),
                    child: Text(
                      'Login to with your astrological journey',
                      style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.90),
                    ),
                  )
                ],
              ),
              // SizedBox(height: 100),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 474, 20, 0),
                    child: Form(
                        child: Column(
                      children: [
                        SizedBox(
                          width: 352,
                          height: 65,
                          child: IntlPhoneField(
                            keyboardType: TextInputType.phone,
                            initialCountryCode: 'IN',
                            dropdownIcon: Icon(Icons.arrow_drop_down,
                                color: Colors.black),
                            style: TextStyle(fontSize: 16, color: Colors.black),
                            decoration: InputDecoration(
                              // labelText: 'Enter Mobile number ',
                              // labelStyle: TextStyle(
                              //     color: Colors.black,
                              //     fontWeight: FontWeight.bold),
                              counterText: '',
                              hintText: 'Enter Mobile number',
                              hintStyle: GoogleFonts.outfit(
                                  fontSize: 16, color: Colors.black45),
                              contentPadding: EdgeInsets.only(top: 10),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 352,
                          height: 46,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                Get.to(Otp());
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                // backgroundColor: Color(0xffE1353C),
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                maximumSize: Size(200, 50)),
                            child: Text(
                              'Send OTP',
                              style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    )),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 592, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'By signing up, you agree to our',
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Terms of use',
                              style: GoogleFonts.outfit(
                                color: Color(0xffE1353C),
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            )),
                        Text(
                          'and',
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(140, 613, 0, 0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacy Policy',
                          style: GoogleFonts.outfit(
                              color: Color(0xffE1353C),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(52, 656, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          height: 2,
                          width: 80,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            'Or Sign In with',
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          height: 2,
                          width: 80,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 694, 0, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: SizedBox(
                            height: 40,
                            width: 40.03,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                  elevation: 5,
                                ),
                                child: SizedBox(
                                  height: 24.02,
                                  width: 24,
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/google.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: SizedBox(
                            height: 40,
                            width: 40.03,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                  elevation: 5,
                                ),
                                child: SizedBox(
                                  height: 24.02,
                                  width: 24,
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/facebook.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: SizedBox(
                            height: 40,
                            width: 40.03,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                  elevation: 5,
                                ),
                                child: SizedBox(
                                  height: 24.02,
                                  width: 24,
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/apple.png'),
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(101, 740, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.outfit(
                                  color: Color(0xffE1353C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
