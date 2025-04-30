import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vcode_ui/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialData();
  }

  Future<void> initialData() async {
    print('initial data');
    await Future.delayed(Duration(seconds: 1));
    // Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
    Get.to(SignUp(),
        transition: Transition.fadeIn, duration: Duration(seconds: 2));
  }

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 370,
                width: 370,
                child: Image(
                  image: AssetImage('assets/images/pngtree.png'),
                  fit: BoxFit.contain,
                )),
            Text(
              'Astrotalks',
              style: GoogleFonts.outfit(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    ));
  }
}
