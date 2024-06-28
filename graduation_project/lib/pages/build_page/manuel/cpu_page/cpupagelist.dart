import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graduation_project/pages/build_page/manuel/PartDetail.dart';
import 'package:graduation_project/pages/compare/CPUsCompare.dart';
import 'package:http/http.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required this.origin});
  final String origin;

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Future<List> getdata() async {
    var responce = await get(Uri.parse(
        "http://setupmaster.runasp.net/api/Processor?pagenumber=1&pageSize=328"));
    var responcebody = jsonDecode(responce.body);
    return responcebody["items"];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
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
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            color: Colors.green,
                            child: Image.asset(
                              'images/intel_core_i7_2.webp',
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: Text(
                                  '${snapshot.data![index]['name']}',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${snapshot.data![index]['price']}\$',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green),
                              ),
                            ],
                          ),
                          subtitle: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      String name =
                                          "${snapshot.data![index]['name']}";
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PartDetail(name: name),
                                        ),
                                      );
                                    },
                                    child: Text(
                                        '                     view more details ',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8)),
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 8,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              if (widget.origin == 'Page1') {
                                var name = snapshot.data![index]['name'];
                                double price = snapshot.data![index]['price'];
                                var turbo = snapshot.data![index]['turboClock'];
                                var base = snapshot.data![index]['baseClock'];
                                var tdp = snapshot.data![index]['tdp'];

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CPUsCompare(
                                        activate1: true,
                                        baseclock: base,
                                        name: name,
                                        price: price,
                                        tdp: tdp,
                                        turboclock: turbo,
                                      ),
                                    ));
                              } else if (widget.origin == 'Page2') {
                                var name = snapshot.data![index]['name'];
                                double price = snapshot.data![index]['price'];
                                var turbo = snapshot.data![index]['turboClock'];
                                var base = snapshot.data![index]['baseClock'];
                                var tdp = snapshot.data![index]['tdp'];
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CPUsCompare(
                                        activate2: true,
                                        baseclock2: base,
                                        name2: name,
                                        price2: price,
                                        tdp2: tdp,
                                        turboclock2: turbo,
                                      ),
                                    ));
                              } else if (widget.origin == 'Page3') {
                                bool autobuildpageactice = true;
                              }
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                          tileColor: Colors.black,
                        ),
                      ),
                      Divider(
                        color: Color(0xFF2F003F),
                        thickness: 1,
                        height: 0,
                      ),
                    ],
                  ),
                );
              });
        }));
  }
}
