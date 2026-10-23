// ignore_for_file: unused_import, deprecated_member_use
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/views/bank_ui.dart';
import 'package:flutter_thai_hotline_app/views/emg_ui.dart';
import 'package:flutter_thai_hotline_app/views/pub_ui.dart';
import 'package:flutter_thai_hotline_app/views/travel_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_thai_hotline_app/views/about_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  Future<void> openLink(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('เปิดลิงก์ไม่ได้: $url');
    }
  }

  //สร้างตัวแปรเก็บ index baritem ที่เลือก
  int selectIndex = 0;

  // สร้าง list เก็บหน้าที่ต้องการแสดง 3 หน้า About,BMR,BMI
  //list เหมือน array
  List subview = [
    TravelUI(),
    EmgUI(),
    BankUI(),
    PubUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 217, 217, 217),
        title: const Text(
          "สายด่วน THAILAND",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.black),
            tooltip: 'เกี่ยวกับ',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUI()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(size: 11), // ขนาดแถบที่เลือก
        unselectedIconTheme:
            const IconThemeData(size: 11), // ขนาดแถบที่ไม่ได้เลือก
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        currentIndex: selectIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor:
            Colors.black54, // สีของแถบที่ไม่ได้เลือก (เข้มขึ้น)
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.car),
            label: "การเดินทาง",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.truckMedical),
            label: "เหตุฉุกเฉิน",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.university),
            label: "ธนาคาร",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart),
            label: "สาธารณูปโภค",
          ),
        ],
      ),
      //ส่วน body -----------------------------------------
      body: subview[selectIndex],
    );
  }
}
