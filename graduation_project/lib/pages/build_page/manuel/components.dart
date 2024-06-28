import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'package:graduation_project/pages/build_page/manuel/case_page/CasePartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/cpu_page/PartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/gpu_page/gpuPartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/hdd_page/HddPartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/memory_page/RamPartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/motherboard_page/motherboardPartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/power_supply_page/powersupplyPartsPage.dart';
import 'package:graduation_project/pages/build_page/manuel/ssd_page/ssdPartsPage.dart';

class Components extends StatefulWidget {
  const Components({super.key});

  @override
  State<Components> createState() => _ComponentsState();
}

class _ComponentsState extends State<Components> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff0D0018),
          child: ListView(
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/cpu.svg",
                                    height: 80,
                                  ),
                                  Text(
                                    "cpu",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return memoryPartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/memory.svg",
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Memory",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return psuPartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/power supply.svg",
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Power Supply",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return hddPartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/hdd.svg",
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Hdd Storage",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "Icons/cooler.svg",
                                    height: 80,
                                  ),
                                  Text(
                                    "cooler",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Column(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MBPartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/motherboard.svg",
                                    height: 80,
                                  ),
                                  Text(
                                    "Motherboard",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return gpuPartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/video card.svg",
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Video Card",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CasePartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/case.svg",
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Case",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ssdPartsPage();
                            }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff310D3E),
                                borderRadius: BorderRadius.circular(20)),
                            width: 120,
                            height: 120,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 12),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.white,
                                    "Icons/ssd.svg",
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Ssd Storage",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
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
                          height: 120,
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
                                  '0 \$',
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
          ),
        ),
        NumberOfPage: 0);
  }
}
