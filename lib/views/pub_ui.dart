// ignore_for_file: deprecated_member_use, unused_import, unused_local_variable, sort_child_properties_last
import 'package:flutter_thai_hotline_app/models/hot_line.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PubUI extends StatefulWidget {
  const PubUI({super.key});

  @override
  State<PubUI> createState() => _PubUIState();
}

class _PubUIState extends State<PubUI> {
  List imagesCrs = [
    'assets/images/pubutil/pub_0.png',
  ];

  List Hotdata = [
    //ข้อมูลร้านเค้ก  ----------------------------------------
    Hotline(
      name: 'ไฟฟ้านครหลวง',
      image1: 'assets/images/pubutil/pub_1.png',
      phone: '1130',
    ),
    Hotline(
      name: 'ไฟฟ้าส่วนภูมิภาค',
      image1: 'assets/images/pubutil/pub_2.png',
      phone: '1129',
    ),
    Hotline(
      name: 'ไฟฟ้าฝ่ายผลิต',
      image1: 'assets/images/pubutil/pub_3.png',
      phone: '1416',
    ),
    Hotline(
      name: 'การประปานครหลวง',
      image1: 'assets/images/pubutil/pub_4.png',
      phone: '1125',
    ),
    Hotline(
      name: 'การประปาส่วนภูมิภาค',
      image1: 'assets/images/pubutil/pub_5.png',
      phone: '1662',
    ),
    Hotline(
      name: 'TrueMove',
      image1: 'assets/images/pubutil/pub_6.png',
      phone: '1242',
    ),
    Hotline(
      name: 'Dtac',
      image1: 'assets/images/pubutil/pub_7.png',
      phone: '1678',
    ),
    Hotline(
      name: 'AIS',
      image1: 'assets/images/pubutil/pub_8.png',
      phone: '1175',
    ),
    Hotline(
      name: 'TOT',
      image1: 'assets/images/pubutil/pub_9.png',
      phone: '1100',
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
              "สายด่วนสาธารณูปโภค",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Image.asset(
              'assets/images/pubutil/pub_0.png',
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
