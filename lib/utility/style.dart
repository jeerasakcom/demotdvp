import 'package:flutter/material.dart';

class StyleProjects {
  Color darkColor = const Color(0xff0659b4);
  Color primaryColor = const Color(0xff1461e7);

  TextStyle TopicMain1 = TextStyle(
      fontFamily: 'THSarabunNew',
      //color: const Color(0xff004080),
      color: const Color(0xff002080),
      fontWeight: FontWeight.bold,
      fontSize: 32);

  TextStyle TopicMain2 = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff002080),
      fontWeight: FontWeight.bold,
      fontSize: 24);

  TextStyle TopicMain3 = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff04066b),
      fontWeight: FontWeight.bold,
      fontSize: 20);

  TextStyle TopicMain3U = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff04066b),
      fontWeight: FontWeight.bold,
      fontSize: 18);

  TextStyle TopicMainT3 = TextStyle(
      fontFamily: 'Charmonman',
      color: const Color(0xff04066b),
      fontWeight: FontWeight.bold,
      fontSize: 20);

  TextStyle TopicMainT3_A = TextStyle(
      fontFamily: 'Charmonman',
      color: const Color(0xff04066b),
      fontWeight: FontWeight.bold,
      fontSize: 24);

  TextStyle TopicMainT3_B = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xff000000),
      fontWeight: FontWeight.bold,
      fontSize: 24);

  TextStyle TopicMainT3_C = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xffffffff),
      fontWeight: FontWeight.bold,
      fontSize: 16);

  TextStyle TopicMainT3_D = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xffffffff),
      fontWeight: FontWeight.bold,
      fontSize: 28);

  TextStyle TopicMainT3_E = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xfffefbfb),
      fontWeight: FontWeight.bold,
      fontSize: 10);

  TextStyle TopicMainT3_F = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xfffefbfb),
      fontWeight: FontWeight.bold,
      fontSize: 12);

  TextStyle TopicMainT3_G = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xfffefbfb),
      fontWeight: FontWeight.bold,
      fontSize: 24);

  TextStyle TopicMainT3_H = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color(0xfffefbfb),
      fontWeight: FontWeight.bold,
      fontSize: 18);

  TextStyle TopicMainT3_I = TextStyle(
      fontFamily: 'Charmonman',
      color: Color(0xfffefbfb),
      fontWeight: FontWeight.bold,
      fontSize: 18);

  TextStyle TopicMainT3_1 = TextStyle(
      fontFamily: 'THSarabunNew',
      color: Color.fromARGB(146, 0, 0, 0),
      fontWeight: FontWeight.bold,
      fontSize: 24);

  TextStyle TopicMain4 = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff004080),
      fontWeight: FontWeight.bold,
      fontSize: 16);

  TextStyle TopicMain5 = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff04066b),
      fontWeight: FontWeight.bold,
      fontSize: 14);

  //data corp
  TextStyle TopicMain5_A = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff900036),
      fontWeight: FontWeight.bold,
      fontSize: 26);

  TextStyle TopicMain5_B = TextStyle(
      fontFamily: 'THSarabunNew',
      color: const Color(0xff900036),
      fontWeight: FontWeight.bold,
      fontSize: 20);

  SizedBox BoxSpace = SizedBox(
    height: 20,
  );

  SizedBox boxSpace2 = SizedBox(
    height: 10,
  );

  Container bgColorall() {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff002040),
              Color(0xff004080),
            ]),
      ),
    );
  }

  Container bgdataCorp() {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff002040),
            Color(0xff033674),
            Color(0xff04499f),
            Color(0xff033674),
            Color(0xff002040),
            //Color(0xff004080),
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
    );
  }

  StyleProjects();

//
}
