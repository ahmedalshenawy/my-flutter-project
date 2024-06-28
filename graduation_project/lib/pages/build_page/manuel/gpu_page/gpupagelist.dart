import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Gpupage extends StatefulWidget {
  const Gpupage({super.key});

  @override
  State<Gpupage> createState() => _GpupageState();
}

class _GpupageState extends State<Gpupage> {
  Future<List> getdata() async {
    var responce = await get(Uri.parse(
        "http://setupmaster.runasp.net/api/gpu/?pagenumber=1&pageSize=400"));
    var responcebody = jsonDecode(responce.body);
    return responcebody["items"];
  }

  Future<List> getsearchdata() async {
    var responce = await get(Uri.parse(
        "http://setupmaster.runasp.net/api/gpu/search/?searchQuery=$_textValue&pagenumber=1&pageSize=400"));
    var responcebody = jsonDecode(responce.body);
    return responcebody["items"];
  }

  TextEditingController _controller = TextEditingController();
  String _textValue = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (_textValue == '') {
      getdata();
    } else {
      getsearchdata();
    }
    ;
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
                                  Text(
                                      '                     view more details ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8)),
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
                            onTap: () {},
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
