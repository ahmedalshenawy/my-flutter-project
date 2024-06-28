import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/pages/basics/AccountPage.dart';
import 'package:graduation_project/pages/contactUs/Contact%20us.dart';
import 'package:graduation_project/pages/HomePage.dart';
import 'package:graduation_project/pages/compare/ChooseTypeCompare.dart';
import '../build_page/BuildPage.dart';

// ignore: must_be_immutable
class AppScaffold extends StatefulWidget {
  int NumberOfPage;
  final Widget body;
  AppScaffold({required this.body, required this.NumberOfPage});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  // const app_bar({super.key});
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  int _selectedIndex = -1;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.NumberOfPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0018),
      key: _scaffoldkey,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _scaffoldkey.currentState!.openEndDrawer();
              },
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ))
        ],
        backgroundColor: Color(0xFF2F003F),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        leadingWidth: 20,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'images/LOGO.png',
            fit: BoxFit.fitWidth,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
        ),
      ),
      endDrawer: NavigationDrawer(),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: Color(0xFF2F003F),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                'Icons/mobile-pc.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 0 ? Color(0xFFA800E3) : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = widget.NumberOfPage;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BuildPage();
                  }));
                });
              },
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: SvgPicture.asset(
                'Icons/cpu compare.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 1 ? Color(0xFFA800E3) : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = widget.NumberOfPage;
                });
              },
            ),
            SizedBox(
              width: 90,
            ),
            IconButton(
              icon: SvgPicture.asset(
                'Icons/vs.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 3 ? Color(0xFFA800E3) : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = widget.NumberOfPage;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ChooseTypeCompare();
                  }));
                });
              },
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: SvgPicture.asset(
                'Icons/9025852_phone_call_icon.svg',
                width: 30,
                height: 30,
                color: _selectedIndex == 4 ? Color(0xFFA800E3) : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = widget.NumberOfPage;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ContactPage();
                  }));
                });
              },
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        shape: CircleBorder(),
        onPressed: () {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: _selectedIndex == 2 ? Color(0xFFA800E3) : Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
            Positioned.fill(
              child: IconButton(
                icon: Icon(Icons.home, size: 30, color: Colors.white),
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                    _selectedIndex = widget.NumberOfPage;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      body: widget.body,
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Color(0xFF410C54),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Momen Khaled',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              accountEmail: Text(
                'momenkhaled@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  'images/the moon.jpg',
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xff0D0018),
                  child: SvgPicture.asset(
                    'Icons/christmas.svg',
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/snow01.gif'),
                    fit: BoxFit.fill,
                  ),
                  color: Color(0xff0D0018)),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'Icons/8324223_ui_essential_app_avatar_profile_icon.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              title: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AccountPage();
                  }));
                },
                child: Text(
                  'Account setting',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset(
                'Icons/Language_.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              title: Text(
                'Language',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: SvgPicture.asset(
                'Icons/9025852_phone_call_icon.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              title: Text(
                'Contact us',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'Icons/logout.svg',
                color: Colors.white,
                width: 25,
                height: 25,
              ),
              title: Text(
                'Loge out',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      );
}
