import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'package:graduation_project/pages/build_page/BuildPage.dart';
import 'package:graduation_project/pages/build_page/manuel/cpu_page/PartsPage.dart';
import 'package:graduation_project/pages/compare/ChooseTypeCompare.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      NumberOfPage: 2,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: Color(0xff0D0018),
          child: Column(
            children: [
              // Welcome section
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Color(0xFF2F003F),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Welcome Name',
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white), // لون النص الكبير
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Lets build the best PC',
                          style: TextStyle(fontSize: 12.0, color: Colors.white),
                        ),
                      ],
                    ),
                    // SizedBox(height: 25),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     SizedBox(
                    //       width: 40,
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(5.0),
                    //         ),
                    //         padding: EdgeInsets.symmetric(horizontal: 10.0),
                    //         child: Row(
                    //           children: [
                    //             Expanded(
                    //               child: TextField(
                    //                 style: TextStyle(color: Colors.black),
                    //                 decoration: InputDecoration(
                    //                   hintText: 'Search for different PC parts',
                    //                   hintStyle: TextStyle(
                    //                       fontSize: 12, color: Colors.grey),
                    //                   border: InputBorder.none,
                    //                   prefixIcon: Icon(Icons.search,
                    //                       color: Color(0xFFA800E3)),
                    //                   suffixIcon: IconButton(
                    //                     icon: Icon(Icons.menu,
                    //                         color: Color(0xFFA800E3)),
                    //                     onPressed: () {},
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(width: 40),
                    //   ],
                    // ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              // Images section
              Center(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    viewportFraction: 0.9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                  ),
                  items: [
                    // Image 1
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChooseTypeCompare();
                            }));
                          },
                          child: Image.asset(
                            'images/1.PNG',
                            fit: BoxFit.contain,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                    ),
                    // Image 2
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PartsPage();
                            }));
                          },
                          child: Image.asset(
                            'images/2.PNG',
                            fit: BoxFit.contain,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                    ),
                    // Image 3
                    Container(
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BuildPage();
                            }));
                          },
                          child: Image.asset(
                            'images/3.PNG',
                            fit: BoxFit.contain,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Items section
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 25),
                        const Text(
                          'New items added',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Card(
                            color: Color(0xff0D0018),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(
                                width: 2,
                                color: Color(0xFF410C54),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'images/intel_core_i7_2.webp',
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'core i7',
                                      style: TextStyle(color: Colors.white),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '100\$',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Color(0xff0D0018),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(
                                width: 2,
                                color: Color(0xFF410C54),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'images/intel_core_i7_2.webp',
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'core i7',
                                      style: TextStyle(color: Colors.white),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '100\$',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Color(0xff0D0018),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(
                                width: 2,
                                color: Color(0xFF410C54),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      'images/intel_core_i7_2.webp',
                                      width: 100,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'core i7',
                                      style: TextStyle(color: Colors.white),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '100\$',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
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
            ],
          ),
        ),
      ),
    );
  }
}
