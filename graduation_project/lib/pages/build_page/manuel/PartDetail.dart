import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'package:http/http.dart';

class PartDetail extends StatefulWidget {
  final String name;
  PartDetail({required this.name});
  @override
  _PartDetailState createState() => _PartDetailState();
}

class _PartDetailState extends State<PartDetail> {
  Future<List> getdata() async {
    var responce = await get(Uri.parse(
        "http://setupmaster.runasp.net/api/Processor/benchmark${widget.name}"));
    print(responce);
    var responcebody = jsonDecode(responce.body);
    return responcebody;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      NumberOfPage: 1,
      body: FutureBuilder<List>(
          future: getdata(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  "Bad connection check your connection and try again later",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            }

            return SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset('images/intel_core_i7_2.webp',
                                fit: BoxFit.fill),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF410C54),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Add to list',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 9,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Cores ',
                                style: TextStyle(
                                    color: Color(0xff00B2FF), fontSize: 14),
                              ),
                              Text(
                                ': 24',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 9,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'L3 cache ',
                                style: TextStyle(
                                    color: Color(0xff00B2FF), fontSize: 14),
                              ),
                              Text(
                                ': 36 mb',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 9,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'TDP ',
                                style: TextStyle(
                                    color: Color(0xff00B2FF), fontSize: 14),
                              ),
                              Text(
                                ': 125 W',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 9,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Transistor size ',
                                style: TextStyle(
                                    color: Color(0xff00B2FF), fontSize: 14),
                              ),
                              Text(
                                ': 10 nm',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Color(0xFF2F003F),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          'Abstract',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: SingleChildScrollView(
                        child: Text(
                            'kmfkdjngbuishrtuifdhlvbfnnbsdufebdvhdbvhdfbvhdvhdsbchbdcsjhfbhvbhsadebvkuhfrbkwvjbbhfdlkhsabkjvhbdsavbhdkhsavbkhvjabjdhbvashdvbjaskdvhbadshbvsvssnfjknbaghvfdsuyhfgcjhedbcjhdvgfwahvefhvbvdefvbbgvfgvbhvbhdbvhdsabvdbkvahdbvhabkhdbkajhdbvahsdbvkhbdjkvhbadhvbhdasbvkhbsdjvbdvjvndjvndjnvdjnvdjndjvnvdjnvjdnvjdnvjdnjvnjnvjdnjvndjvndjvndjnvjdnvjdnvvbdhbvfgbvfhdbvjdsnajvbdhubsdjh',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                height: 1.7)),
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF2F003F),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          'General',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, bottom: 30, left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFF2F003F),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          'Performance',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, bottom: 30, left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 9,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L3 cache ',
                              style: TextStyle(
                                  color: Color(0xff00B2FF), fontSize: 14),
                            ),
                            Text(
                              ': 36 mb',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFF2F003F),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Center(
                        child: Text(
                          'Links to view price',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 40, bottom: 40, left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF2F003F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        'Icons/amazon.svg',
                                        width: 5,
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'View on Amazon',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.cyan,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        'Icons/sigma.svg',
                                        width: 10,
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'View on Sigma',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.yellow,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        'Icons/noon.svg',
                                        width: 10,
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'View on Noon',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              width: 140,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: SvgPicture.asset(
                                        'Icons/amazon.svg',
                                        width: 10,
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'View on Amazon',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
          })),
    );
  }
}
