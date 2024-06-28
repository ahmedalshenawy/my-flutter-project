import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'package:graduation_project/pages/build_page/manuel/cpu_page/cpupagelist.dart';
import 'package:graduation_project/pages/compare/CompairDetails.dart';

class CPUsCompare extends StatefulWidget {
  bool activate1;
  bool activate2;
  String name;
  String baseclock;
  String turboclock;
  String tdp;
  double price;
  String name2;
  String baseclock2;
  String turboclock2;
  String tdp2;
  double price2;

  CPUsCompare({
    super.key,
    this.activate1 = true,
    this.activate2 = true,
    this.name = "no matches",
    this.baseclock = "0",
    this.turboclock = "0",
    this.tdp = "0",
    this.price = 0,
    this.name2 = "",
    this.baseclock2 = "",
    this.turboclock2 = "",
    this.tdp2 = "",
    this.price2 = 0,
  });

  @override
  _CPUsCompareState createState() => _CPUsCompareState();
}

class _CPUsCompareState extends State<CPUsCompare> {
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
                  child: widget.activate1
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
                                                widget.name,
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
                                          widget.activate1 = false;
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
                                          widget.baseclock,
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
                                    widget.turboclock,
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
                                          widget.tdp,
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
                                    "${widget.price}\$",
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(origin: 'Page1'),
                              ),
                            );
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CompairDetails(),
                            ),
                          );
                        },
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
                  child: widget.activate2
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
                                          widget.activate2 = false;
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
                                    '${widget.price2} \$',
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homepage(origin: 'Page2'),
                              ),
                            );
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
