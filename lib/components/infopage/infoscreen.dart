import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class InfotdvpScreen extends StatefulWidget {
  @override
  _InfotdvpScreenState createState() => _InfotdvpScreenState();
}

class _InfotdvpScreenState extends State<InfotdvpScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg950.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
              bottom: 0,
              left: 0,
              right: 0,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  _backButton(),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      //color: const Color(0xfff0f7f9),
                      color: const Color(0xfffffdf9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[


                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      color: const Color(0xff004080),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),

                  Container(
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      //color: const Color(0xfff0f7f9),
                      color: const Color(0xfffffdf9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[


                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      color: const Color(0xff004080),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),

                  Container(
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      //color: const Color(0xfff0f7f9),
                      color: const Color(0xfffffdf9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[


                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      color: const Color(0xff004080),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),

                  Container(
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      //color: const Color(0xfff0f7f9),
                      color: const Color(0xfffffdf9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[


                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      color: const Color(0xff004080),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),

                  Container(
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      //color: const Color(0xfff0f7f9),
                      color: const Color(0xfffffdf9),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[


                        SizedBox(
                          height: 20,
                        ),

                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                      fontFamily: 'THSarabunNew',
                                      color: const Color(0xff004080),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 32),
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),

      ),
    );
  }


  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: const Color(0xffffc52e),
              ),
            ),
            Text(
              'Back',
              style: TextStyle(
                fontFamily: 'TH Sarabun New',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffc52e),
              ),
            )
          ],
        ),
      ),
    );
  }

}
