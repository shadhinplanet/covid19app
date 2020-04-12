import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<Color> _colors = <Color>[
  Colors.indigo,
  Colors.blue,
  Colors.blueGrey,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
  Colors.pink,
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.redAccent,
  Colors.tealAccent,
  Colors.greenAccent,
  Colors.blueAccent
];

TextStyle _banglaStyle(double size, Color color) {
  return TextStyle(fontSize: size, fontFamily: 'Solaiman', color: color);
}

Widget _swiper(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * .3,
    width: double.infinity,
    child: Swiper(
      itemCount: 5,
      autoplay: false,
      autoplayDelay: 5000,
      itemWidth: MediaQuery.of(context).size.width - 30,
      viewportFraction: 0.8,
      layout: SwiperLayout.STACK,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 4,
          child: Container(
            color: _colors[index],
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "বাংলাদেশ",
                  style: _banglaStyle(30, Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipOval(
                      child: Container(
                        height: 90,
                        width: 90,
                        color: Colors.red,
                        child: Center(
                            child: Text(
                          "২৪\nঘণ্টা",
                          style: _banglaStyle(30, Colors.white),
                        )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: <Widget>[
                          _singleRowItem("আক্রান্ত", 'assets/ill.png', '১১২'),
                          _singleRowItem("সুস্থ", 'assets/check.png', '২০'),
                          _singleRowItem("মৃত্যু", 'assets/bed.png', '৩'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "আরও পড়ুন...",
                      style: _banglaStyle(20, Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget _singleRowItem(String title, String image, String number) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 80,
          child: Text(
            title,
            textAlign: TextAlign.right,
            style: _banglaStyle(20, Colors.white),
          ),
        ),
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        Container(
          width: 50,
          child: Text(
            number,
            style: _banglaStyle(22, Colors.white),
          ),
        ),
      ],
    ),
  );
}

Widget _drawerHeaderItem(String totalText, totalCount) {
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 30),
            child: Text(
              totalText,
              textAlign: TextAlign.right,
              style: _banglaStyle(20, Colors.white),
            ),
          ),
        ),
        Container(
          width: 100,
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Text(
            totalCount,
            textAlign: TextAlign.center,
            style: _banglaStyle(
              17,
              Color(0xFFba5252),
            ),
          ),
        )
      ],
    ),
  );
}

Widget _drawerMenuItem(String title) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.black,
    ),
    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          "assets/menu_icon.png",
          width: 20,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: _banglaStyle(20, Colors.white),
        )
      ],
    ),
  );
}

Drawer _appDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      child: Container(
        color: Color(0xFF4a5968),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "assets/logo.png",
                          width: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "COVID 19",
                          style: _defaultTextStyle(20, FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    width: double.infinity,
                    color: Colors.cyan.withOpacity(.8),
                    child: Text(
                      "বিশ্ব করোনা পরিস্থিতি",
                      style: _banglaStyle(25, Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                    decoration: BoxDecoration(
                      color: Color(0xffba5252),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        _drawerHeaderItem('মোট আক্রান্ত', '২৩৫৩২৬'),
                        _drawerHeaderItem('মোট মৃত', '৭৫৩২৬'),
                        _drawerHeaderItem('মোট সুস্থ', '২৩৫৩২৬'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Color(0xFF526374)),
                    child: Column(
                      children: <Widget>[
                        _drawerMenuItem('করোনা ভাইরাসের লক্ষণ'),
                        _drawerMenuItem('ভাইরাস প্রতিরোধে করনীয়'),
                        _drawerMenuItem('ভাইরাস প্রতিরোধে করনীয়'),
                        _drawerMenuItem('ভাইরাস প্রতিরোধে করনীয়'),
                        _drawerMenuItem('ভাইরাস প্রতিরোধে করনীয়'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      color: Colors.white,
                      child: Text(
                        "সকল কল সেন্টার",
                        style: _banglaStyle(25, Color(0xFFb85151)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "আমাদের সম্পর্কে",
                      style: _banglaStyle(14, Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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

final GlobalKey<ScaffoldState> _scaffoldState = new GlobalKey<ScaffoldState>();

TextStyle _defaultTextStyle(double size, FontWeight weight) {
  return TextStyle(
      fontFamily: 'Montserrat', fontWeight: weight, fontSize: size);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: Color(0xFF59c8c9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "COVID 19",
          style: _defaultTextStyle(20, FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.cog),
            onPressed: () {},
            padding: EdgeInsets.only(right: 20),
          )
        ],
      ),
      drawer: _appDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            _swiper(context),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Colors.black,
              child: Text(
                "বিজ্ঞাপন",
                style: _banglaStyle(25, Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _singleListItem('বাংলাদেশ', '২৭', '১০', '৩'),
            _singleListItem('বাংলাদেশ', '২৭', '১০', '৩'),
            _singleListItem('বাংলাদেশ', '২৭', '১০', '৩'),
            _singleListItem('বাংলাদেশ', '২৭', '১০', '৩'),
            _singleListItem('বাংলাদেশ', '২৭', '১০', '৩'),
            _singleListItem('বাংলাদেশ', '২৭', '১০', '৩'),
          ],
        ),
      ),
    );
  }

  Widget _singleListItem(
      String country, String newcase, String rocover, String death) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .67,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    country,
                    style: _banglaStyle(25, Colors.black),
                  ),
                  Text(
                    "নতুন আক্রান্তঃ ${newcase}\t\t\t সুস্থঃ ${rocover}",
                    style: _banglaStyle(20, Colors.black45),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: Text(
                  "মৃত্যু\t ${death}",
                  style: _banglaStyle(25, Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
