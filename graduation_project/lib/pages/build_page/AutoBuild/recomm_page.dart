import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'dart:convert';

import 'package:http/http.dart';

class AnotherPage extends StatefulWidget {
  final String selectedCategories;
  final String selectedSubCategories;
  final String? selectedOption;
  final String? caseOption;

  AnotherPage({
    required this.selectedCategories,
    required this.selectedSubCategories,
    required this.selectedOption,
    required this.caseOption,
  });

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  String urlbase =
      "https://recommendation-system-gradproj.onrender.com/recommsys/";

  Future<Map<String, dynamic>> getrecommdata() async {
    String url =
        "$urlbase${widget.selectedCategories} ${widget.selectedSubCategories},1000,${widget.selectedOption},${widget.caseOption}";
    var responce = await get(Uri.parse(url));
    var responcebody = jsonDecode(responce.body);

    return responcebody;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getrecommdata();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      NumberOfPage: 0,
      body: FutureBuilder<Map<String, dynamic>>(
          future: getrecommdata(),
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
            // var total = snapshot.data!["CPU"][1] +
            //     snapshot.data!["GPU"][1] +
            //     snapshot.data!["PSU"][1] +
            //     snapshot.data!["SDD"][1] +
            //     snapshot.data!["HDD"][1] +
            //     snapshot.data!["MB"][1] +
            //     snapshot.data!["Cooler"][1] +
            //     snapshot.data!["RAM"][1] +
            //     snapshot.data!["Case"][1];

            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Choose your components",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Algerian",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      "${snapshot.data!["CPU"]![0]}",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["CPU"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["RAM"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["RAM"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["PSU"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["PSU"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["HDD"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["HDD"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["Cooler"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["Cooler"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                        Column(children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["MB"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["MB"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["GPU"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["GPU"]![1]}\$' ??
                                              "0",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["Case"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["Case"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/intel_core_i7_2.webp',
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${snapshot.data!["SSD"]![0]}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      SizedBox(
                                        width: 60,
                                        child: Text(
                                          '${snapshot.data!["SSD"]![1]}\$',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 12),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {});
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
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 130,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total price',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '1000 \$',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ],
                    )
                  ]),
                ),
              ],
            );
          })),
    );
  }
}
