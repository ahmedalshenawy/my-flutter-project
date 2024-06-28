import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';

class VideoCardsCompare extends StatefulWidget {
  @override
  _VideoCardsCompareState createState() => _VideoCardsCompareState();
}

class _VideoCardsCompareState extends State<VideoCardsCompare> {
  bool _showCardOneContent = false;
  bool _showCardTweContent = false;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      NumberOfPage: 3,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Card(
                color: Color(0xff0D0018),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    width: 4,
                    color: Color(0xFF410C54),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 225,
                  child: _showCardOneContent
                      ? Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  'images/intel_core_i7_2.webp',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 210,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                size: 12,
                                                color: Colors.black,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                'intel core i7 231231',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _showCardOneContent = false;
                                        });
                                      },
                                      child: Container(
                                        color: Color(0xFF410C54),
                                        width: 20,
                                        height: 20,
                                        child: Icon(
                                          CupertinoIcons.delete,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'Icons/Group 45.svg',
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          '6 * 4.70 GHZ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'Icons/Group 28.svg',
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '5.30 GHZ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'Icons/8888.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Q3 / 2022',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'Icons/Vector.svg',
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '299 \$',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _showCardOneContent = true;
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.plus_circle,
                            color: Color(0xFF410C54),
                            size: 150,
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 9,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  Card(
                    color: Color(0xFF410C54).withOpacity(0.5),
                    shape: CircleBorder(),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Card(
                          shape: CircleBorder(),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'VS',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF410C54),
                              ),
                            ),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 9,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color(0xff0D0018),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(
                    width: 4,
                    color: Color(0xFF410C54),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 225,
                  child: _showCardTweContent
                      ? Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                child: Image.asset(
                                  'images/intel_core_i7_2.webp',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 210,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                size: 12,
                                                color: Colors.black,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                'intel core i7 231231',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _showCardTweContent = false;
                                        });
                                      },
                                      child: Container(
                                        color: Color(0xFF410C54),
                                        width: 20,
                                        height: 20,
                                        child: Icon(
                                          CupertinoIcons.delete,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'Icons/Group 45.svg',
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          '6 * 4.70 GHZ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'Icons/Group 28.svg',
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '5.30 GHZ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'Icons/8888.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'Q3 / 2022',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'Icons/Vector.svg',
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    '299 \$',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _showCardTweContent = true;
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.plus_circle,
                            color: Color(0xFF410C54),
                            size: 150,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
