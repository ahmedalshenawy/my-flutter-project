import 'package:flutter/material.dart';
import 'package:graduation_project/pages/basics/app_bar.dart';
import 'package:graduation_project/pages/build_page/manuel/ssd_page/ssdpagelist.dart';

class ssdPartsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ssdPartsPageState();
  }
}

class _ssdPartsPageState extends State<ssdPartsPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          hintText: 'Search for different PC parts',
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.grey),
                          border: InputBorder.none,
                          prefixIcon:
                              Icon(Icons.search, color: Color(0xFFA800E3)),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.menu, color: Color(0xFFA800E3)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2F003F),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    ' products     Title                     Price    Add product',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            Container(
                height: 433,
                width: 350,
                color: Color(0xff0D0018),
                child: ssdpage()),
          ],
        ),
      ),
      NumberOfPage: 0,
    );
  }
}
