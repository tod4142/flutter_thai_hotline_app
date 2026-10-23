// ignore_for_file: use_build_context_synchronously, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/home_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        //เปิดหน้า cake list แบบไม่ย้อนกลับ
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeUI(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 250, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon/icon.png',
              width: MediaQuery.of(context).size.height * 0.25,
              height: MediaQuery.of(context).size.height * 0.25,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'THAI HOTLINE APP',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'สายด่วนไทย',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.w200,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CircularProgressIndicator(
              color: const Color.fromARGB(255, 245, 205, 15),
            ),
          ],
        ),
      ),
    );
  }
}
