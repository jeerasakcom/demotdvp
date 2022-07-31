import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tdvp/components/chatscreen/chatscreen.dart';
import 'package:tdvp/components/contactpage/contactpage.dart';
import 'package:tdvp/components/datacorporation/datacorporation.dart';
import 'package:tdvp/utility/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tdvp/components/calendarpage/calendarpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> _onWillPop() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                'Exit',
                style: StyleProjects().TopicMain1,
              ),
              content: Text(
                'คุณต้องการออกจากแอปพลิเคชัน?',
                style: StyleProjects().TopicMain2,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      if (Platform.isAndroid) {
                        SystemNavigator.pop();
                      } else if (Platform.isIOS) {
                        exit(0);
                      }
                    },
                    child: Text(
                      'ใช่',
                      style: StyleProjects().TopicMainT3_B,
                      //style: StyleProjects().TopicMainT3_1,
                    )),
                TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: Text(
                      'ไม่',
                      style: StyleProjects().TopicMainT3_B,
                    ))
              ],
            ));
  }

  final List<String> images = [
    'http://tdvpprint.com/uploads/banners/banner_HXVY8HPOMYOKYEWZI5WLGCHNH.jpg',
    "http://tdvpprint.com/uploads/banners/banner_AF6N9LHS43AVZKHW39GOJZCV0.jpg",
    'http://tdvpprint.com/uploads/banners/banner_HJ06DQIG3LBWHYAMRWKNCYATH.jpg',
    'http://tdvpprint.com/uploads/banners/banner_AF6N9LHS43AVZKHW39GOJZCV0.jpg',
    'http://tdvpprint.com/uploads/banners/banner_DNOYBWK4NACVYN1VV9G0YPAP6.jpg',
  ];

  final List<String> imgList = [
    'http://tdvpprint.com/uploads/banners/banner_HXVY8HPOMYOKYEWZI5WLGCHNH.jpg',
    "http://tdvpprint.com/uploads/banners/banner_AF6N9LHS43AVZKHW39GOJZCV0.jpg",
    'http://tdvpprint.com/uploads/banners/banner_HJ06DQIG3LBWHYAMRWKNCYATH.jpg',
    'http://tdvpprint.com/uploads/banners/banner_AF6N9LHS43AVZKHW39GOJZCV0.jpg',
    'http://tdvpprint.com/uploads/banners/banner_DNOYBWK4NACVYN1VV9G0YPAP6.jpg',
  ];

  List<String> nameIcons = [
    '001.png',
    '002.png',
    '003.png',
    '004.png',
    '005.png',
    '006.png',
    '007.png',
    '008.png',
    '009.png',
  ];

  List<String> titles = [
    'ข้อมูลองค์กร',
    'แบบสิ่งพิมพ์',
    'ประเมินราคา',
    'ปฏิทิน',
    'สถานะการพิมพ์',
    'การจัดส่ง',
    'ติดต่อ',
    'ข่าวสาร',
    'แชทบอท',
  ];

  List<Widget> widgets = [];

  List<Widget> routToWidgdets = [
    DataCorporateScreen(),
    HomeScreen(),
    HomeScreen(),
    CalendarPage(),
    HomeScreen(),
    HomeScreen(),
    ContactScreen(),
    HomeScreen(),
    ChatbotScreen(),
    //
    /*
    CorporateScreen(),
    CatalogPage(),
    AssessmentPage(),
    CalendarPage(),
    JobTrackPage(),
    ContactScreen(),
    LogisticsPage(),
    NewsScreen(),
    ChatPage(),
    */
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    int i = 0;
    for (var title in titles) {
      Widget widget = createECard(title, nameIcons[i], i);
      widgets.add(widget);
      i++;
    }
  }

  @override
  Widget build(BuildContext context) {
    int _current = 0;
    final CarouselController _controller = CarouselController();

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: Image.network(
                  item,
                  fit: BoxFit.fill,
                ),
              ),
            ))
        .toList();

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff81d4fa),
          title: Text(
            'โรงพิมพ์อาสารักษาดินแดน กรมการปกครอง\n'
            'Territorial Defence Volunteers Printing',
            style: StyleProjects().TopicMain5,
          ),
          actions: [
            // action button
            IconButton(
              icon: SvgPicture.asset(
                "assets/images/account_circle.svg",
                height: 35,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
          ],
          leading: IconButton(
            icon: Image.asset('assets/images/logo.png'),
            onPressed: () {},
          ),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                height: 200,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: .0),
                child: CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 15),
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 2,
                          //color: const Color(0xff070ab5),
                          color: const Color(0xff04066b),
                        ),
                      ),
                    ),
                    Text(
                      "เมนู",
                      textAlign: TextAlign.center,
                      style: StyleProjects().TopicMain1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          thickness: 2,
                          //color: const Color(0xff070ab5),
                          color: const Color(0xff04066b),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.all(10.0),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 3,
                  children: widgets,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget createECard(String title, String nameIcon, int index) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => routToWidgdets[index],
        ),
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //color: const Color(0xff003a9f),
        color: const Color(0xffb3e5fc),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/$nameIcon',
                  width: 50,
                  height: 50,
                ),
              ),
              Text(
                title,
                style: StyleProjects().TopicMain3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
