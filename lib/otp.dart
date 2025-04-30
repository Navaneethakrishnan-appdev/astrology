import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vcode_ui/main_screen.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF0D922), Color(0xffFF9933)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(239, 144, 0, 0),
                    child: SizedBox(
                      height: 330,
                      width: 330,
                      child: Image(
                        image: AssetImage('assets/images/image7.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(94, 97, 0, 0),
                    child: SizedBox(
                        width: 195.58,
                        height: 189.24,
                        child: Image(
                          image: AssetImage('assets/images/pana1.png'),
                          fit: BoxFit.contain,
                        )),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 348, 0, 0),
                    child: Text('OTP Verification',
                        style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.90,
                        )),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 394, 0, 0),
                    child: Text(
                      'An  4 digit code has been send to your number',
                      style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.90,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(78, 474, 0, 0),
                    child: Form(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: SizedBox(
                            width: 42,
                            height: 46,
                            child: TextFormField(
                              style:
                                  GoogleFonts.outfit(color: Color(0xffFF9933)),
                              showCursor: false,
                              onChanged: (value) {
                                setState(() {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  } else {
                                    FocusScope.of(context).previousFocus();
                                  }
                                });
                              },
                              decoration: InputDecoration(
                                  hintText: '0',
                                  hintStyle: GoogleFonts.outfit(
                                      color: Color(0xffFF9933)),
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 42,
                          height: 46,
                          child: TextFormField(
                            style: GoogleFonts.outfit(color: Color(0xffFF9933)),
                            showCursor: false,
                            onChanged: (value) {
                              setState(() {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              });
                            },
                            decoration: InputDecoration(
                                hintText: '0',
                                hintStyle: GoogleFonts.outfit(
                                    color: Color(0xffFF9933)),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 42,
                          height: 46,
                          child: TextFormField(
                            style: GoogleFonts.outfit(color: Color(0xffFF9933)),
                            showCursor: false,
                            onChanged: (value) {
                              setState(() {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              });
                            },
                            decoration: InputDecoration(
                                hintText: '0',
                                hintStyle: GoogleFonts.outfit(
                                    color: Color(0xffFF9933)),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 42,
                          height: 46,
                          child: TextFormField(
                            style: GoogleFonts.outfit(color: Color(0xffFF9933)),
                            showCursor: false,
                            onChanged: (value) {
                              setState(() {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                } else {
                                  FocusScope.of(context).previousFocus();
                                }
                              });
                            },
                            decoration: InputDecoration(
                                hintText: '0',
                                hintStyle: GoogleFonts.outfit(
                                    color: Color(0xffFF9933)),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
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
                    padding: const EdgeInsets.fromLTRB(16, 536, 0, 0),
                    child: SizedBox(
                      height: 46,
                      width: 352,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Get.to(MainScreen());
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE1353C),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            'Verify OTP',
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 592, 0, 0),
                    child: Row(
                      children: [
                        Text('If you didn’t receive a code!',
                            style: GoogleFonts.outfit(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Resend',
                                  style: GoogleFonts.outfit(
                                      color: Color(0xffE1353C),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400))),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
