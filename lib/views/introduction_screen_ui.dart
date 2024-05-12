// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/show_car_ui.dart';

class IntroductionScreenUI extends StatefulWidget {
  const IntroductionScreenUI({super.key});

  @override
  State<IntroductionScreenUI> createState() => _IntroductionScreenUIState();
}

class _IntroductionScreenUIState extends State<IntroductionScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset(
              'assets/images/toyotaYA.jpg',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'TOYOTA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'yaris ativ',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'YARIS ATIV ใหม่ คือ การออกแบบให้เป็นรถ Fastback ที่ทรงพลัง และสง่างาม โดยติดตั้งไฟเลี้ยว Sequential และไฟหน้าแบบ LED ซึ่งรถในสไตล์ที่มีเสน่ห์นี้ถือได้ว่าเป็น Hi-light ที่ได้รับแรงบันดาลใจมาจากรถยุโรป ในขณะเดียวกันยังคงไว้ซึ่งพื้นที่ภายในห้องโดยสาร และพื้นที่เก็บสัมภาระอันกว้างขวาง',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/MitsuXP.png',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'MITSUBISHI',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'xpander',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'ระบบเกียร์อัตโนมัติ ECO-Dynamic CVT เร่งแซงได้ดั่งใจ และราบรื่น ด้วยระบบเกียร์อัตโนมัติ ECO-Dynamic CVT ตอบสนองการทำงานระหว่างเครื่องยนต์ได้อย่างรวดเร็ว ราบรื่น และประหยัดน้ำมัน ระบบเบรกมือไฟฟ้าอัตโนมัติ พร้อมระบบ Brake Auto Hold',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/hondaCV.png',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'HONDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'civic',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'Honda Civic ยกขีดความสามารถในการขับขี่ให้ทุกเส้นทางเป็นของคุณ ด้วยการออกแบบที่ไร้ขอบเขตด้วยกำลังมอเตอร์ไฟฟ้าที่มากถึง 135 กิโลวัตต์ ที่มอบแรงบิดสูงสุดถึง 315 นิวตัน-เมตร และระบบเกียร์ E-CVT ที่เพิ่มความคล่องตัวและนิ่มนวลตลอดเส้นทาง',
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            image: Image.asset(
              'assets/images/mazdaCX3.jpg',
              width: MediaQuery.of(context).size.width * 1,
            ),
            titleWidget: Column(
              children: [
                Text(
                  'MAZDA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  'cx-3',
                  style: TextStyle(                   
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
              ],
            ),
            bodyWidget: Text(
              'Mazda CX-3 ยกระดับความสปอร์ตพรีเมี่ยม กับเอกลักษณ์ในสไตล์เฉพาะตัว ด้วยกระจังหน้า กระจกมองข้าง และหลังคาสีดำ ออกแบบจากแนวคิด Kodo : Soul of Motion สะท้อนผ่านเส้นสายที่เรียบหรู แต่แฝงความโฉบเฉี่ยว ภายใต้คอนเซ็ปต์ “Less is More” ที่เน้นความเรียบง่าย',
              textAlign: TextAlign.center,
            ),
          ),
        
        ],
        done: Text(
          'หน้าหลัก',
          style: TextStyle(color: Color.fromARGB(255, 2, 3, 15)),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ShowCarUI(),
          ),
        ),
        next: Icon(
          Icons.arrow_right_alt,
          color: Colors.black,
        ),
        nextFlex: 0,
        showSkipButton: true,
        skip: Text(
          'skip',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 1, 9),
          ),
        ),
        dotsDecorator: DotsDecorator(
          color: Color.fromARGB(255, 3, 3, 4),
          activeColor: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.width * 0.025,
          ),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
        infiniteAutoScroll: true,
        autoScrollDuration: 2000,
      ),
    );
  }
}
