// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_thai_hotline_app/models/hot_line.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BankUI extends StatefulWidget {
  const BankUI({super.key});

  @override
  State<BankUI> createState() => _BankUIState();
}

class _BankUIState extends State<BankUI> {
  List imagesCrs = [
    'assets/images/bank/bank_0.png',
  ];

  List Hotdata = [
    //ข้อมูลร้านเค้ก  ----------------------------------------
    Hotline(
      name: 'ธนาคารกรุงเทพ',
      image1: 'assets/images/bank/bank_1.png',
      phone: '1333',
    ),
    Hotline(
      name: 'ธนาคารออมสิน',
      image1: 'assets/images/bank/bank_2.png',
      phone: '1115',
    ),
    Hotline(
      name: 'ธนาคารกสิกร',
      image1: 'assets/images/bank/bank_3.png',
      phone: '02 888 8888',
    ),
    Hotline(
      name: 'ธนาคารกรุงไทย',
      image1: 'assets/images/bank/bank_4.png',
      phone: '02 111 1111',
    ),
    Hotline(
      name: 'ธนาคารกรุงศรี',
      image1: 'assets/images/bank/bank_5.png',
      phone: '1572',
    ),
    Hotline(
      name: 'ธนาคารทีเอ็มบี',
      image1: 'assets/images/bank/bank_6.png',
      phone: '1428',
    ),
    Hotline(
      name: 'ธนาคารซิตี้แบงก์',
      image1: 'assets/images/bank/bank_7.png',
      phone: '1588',
    ),
    Hotline(
      name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์ ',
      image1: 'assets/images/bank/bank_8.png',
      phone: '1327',
    ),
    Hotline(
      name: 'ธนาคารอาคารสงเคราะห์',
      image1: 'assets/images/bank/bank_9.png',
      phone: '02 645 9000',
    ),
    Hotline(
      name: 'ธนาคารไทยพานิชย์',
      image1: 'assets/images/bank/bank_10.png',
      phone: '02 777 7777',
    ),
    Hotline(
      name: 'ธนาคารเกียรตินาคินภัทร ',
      image1: 'assets/images/bank/bank_11.png',
      phone: '02 165 5555',
    ),
    Hotline(
      name: 'ธนาคารไทยเครดิต',
      image1: 'assets/images/bank/bank_12.png',
      phone: '02 697 5454',
    ),
    Hotline(
      name: 'ธนาคารยูโอบี (UOB)',
      image1: 'assets/images/bank/bank_13.png',
      phone: '02 285 1555',
    ),
    Hotline(
      name: 'ธนาคารทิสโก้',
      image1: 'assets/images/bank/bank_14.png',
      phone: '02 633 6000',
    ),
    Hotline(
      name: 'ธนาคารอิสลาม',
      image1: 'assets/images/bank/bank_15.png',
      phone: '02 204 2766',
    ),
    Hotline(
      name: 'ธนาคารซีไอเอ็มบี ไทย',
      image1: 'assets/images/bank/bank_16.png',
      phone: '02 626 7777',
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
              "สายด่วนธนาคาร",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/bank/bank_0.png',
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
