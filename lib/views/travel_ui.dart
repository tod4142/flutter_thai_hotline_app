// ignore_for_file: unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/hot_line.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TravelUI extends StatefulWidget {
  const TravelUI({super.key});

  @override
  State<TravelUI> createState() => _TravelUIState();
}

class _TravelUIState extends State<TravelUI> {
  //ตัวควบคุม textfield  TextEditingController weightController = TextEditingController();
  TextEditingController heightctrl = TextEditingController();
  TextEditingController weightctrl = TextEditingController();

  List imagesCrs = [
    'assets/images/pubutil/travel_0.png',
  ];

  List Hotdata = [
    //ข้อมูลร้านเค้ก  ----------------------------------------
    Hotline(
      name: 'ข้อมูลจราจร',
      image1: 'assets/images/travel/travel_4.png',
      phone: '1197',
    ),
    Hotline(
      name: 'กรมทางหลวงชนบท',
      image1: 'assets/images/travel/travel_1.png',
      phone: '1146',
    ),
    Hotline(
      name: 'ตำรวจทางหลวง',
      image1: 'assets/images/travel/travel_3.png',
      phone: '1193',
    ),
    Hotline(
      name: 'ตำรวจท่องเที่ยว',
      image1: 'assets/images/travel/travel_2.png',
      phone: '1586',
    ),
    Hotline(
      name: 'ขสมก.',
      image1: 'assets/images/travel/travel_5.png',
      phone: '1586',
    ),
    Hotline(
      name: 'บขส.',
      image1: 'assets/images/travel/travel_6.png',
      phone: '1490',
    ),
    Hotline(
      name: 'เส้นทางด่วน',
      image1: 'assets/images/travel/travel_7.png',
      phone: '1543',
    ),
    Hotline(
      name: 'กรมทางหลวง',
      image1: 'assets/images/travel/travel_8.png',
      phone: '1586',
    ),
    Hotline(
      name: 'การรถไฟแห่งประเทศไทย',
      image1: 'assets/images/travel/travel_9.png',
      phone: '1690',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 250, 250),
      body: Center(
        child: Column(
          children: [
            //ส่วนของ carousel imagesCrs
            // CarouselSlider.builder(
            //   itemCount: imagesCrs.length,
            //   options: CarouselOptions(
            //     height: MediaQuery.of(context).size.height * 0.35,
            //     autoPlay: true,
            //     autoPlayInterval: Duration(seconds: 2),
            //   ),
            //   itemBuilder: (BuildContext context, int index, int realIndex) {
            //     return Container(
            //       margin: EdgeInsets.all(10.0),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: AssetImage(imagesCrs[index]),
            //           fit: BoxFit.cover,
            //         ),
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //     );
            //   },
            // ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "สายด่วนการเดินทาง",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/travel/travel_0.png',
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),

            //ส่วนของ ฃื่อร้าน โดยใฃ้ listview ฃื่อ cakedata
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: Hotdata.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 14),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: const Color.fromARGB(255, 217, 217, 217)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.08),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      onTap: () {},
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      leading: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 1.2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Padding(
                            padding: EdgeInsets.all(6),
                            child: Image.asset(
                              Hotdata[index].image1,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        Hotdata[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        Hotdata[index].phone,
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      trailing: Icon(
                        Icons.phone_outlined,
                        color: Color.fromARGB(255, 36, 36, 36),
                        size: 28,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
