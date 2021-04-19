import 'package:flutter/material.dart';
import 'package:flutter_flower/constants.dart';
import 'package:flutter_flower/detail_page.dart';
import 'package:flutter_flower/flower_data.dart';
import 'package:flutter_flower/search_page.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:url_launcher/url_launcher.dart';

class FlowerPage extends StatefulWidget {
  @override
  _FlowerPageState createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> {
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.google.com';

  Future<void> _launchInApp(String url) async {
    await launch(
        "https://www.fidanistanbul.com/kategori/cali-formlu-bitkiler-cicekli-bitkiler.html?lst=0&page=0&no=1&gclid=Cj0KCQjwyN-DBhCDARIsAFOELTmusmexH-ttuIWpHL_bSHlO7GtnsoJ-e3Bx0nDrYoIkG0kHfD2jHpUaAti6EALw_wcB");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/datanthuastic.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Column(
                          children: [
                            Text(
                              "WikiPlants",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 24,
                                color: const Color(0xff47455f),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "'Bitkiler hakkında her şey.'",
                              style: TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: Colors.black,
                                  ),
                                ],
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 8,
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 18),
                child: Swiper(
                  itemCount: flowers.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (context, a, b) => DetailPage(
                                      flowerInfo: flowers[index],
                                    )));
                      },
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 100,
                              ),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32)),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        flowers[index].name,
                                        style: TextStyle(
                                          shadows: <Shadow>[
                                            Shadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 3.0,
                                              color: Colors.grey,
                                            ),
                                          ],
                                          fontFamily: 'Avenir',
                                          fontSize: 44,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Evcil Çiçekler',
                                        style: TextStyle(
                                          shadows: <Shadow>[
                                            Shadow(
                                              offset: Offset(1.0, 1.0),
                                              blurRadius: 3.0,
                                              color: Colors.grey,
                                            ),
                                          ],
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 32,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Detaylı bilgi için;        ',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_sharp,
                                            color: secondaryTextColor,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 350,
                            height: 350,
                            child: Image.asset(
                              flowers[index].iconImage,
                            ),
                            padding: EdgeInsets.all(4),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 8,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /*
            IconButton(
              icon: Icon(
                Icons.menu_open,
                color: const Color(0xff47455f),
              ),
              onPressed: () {},
            ),
             */
            IconButton(
              icon: Icon(
                Icons.search,
                color: const Color(0xff47455f),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchingPage()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: const Color(0xff47455f),
              ),
              onPressed: () {
                _launchInApp(_launchUrl);
              },
            ),
          ],
        ),
      ),
      /*
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu_open,
                color: const Color(0xff47455f),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: const Color(0xff47455f),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchingPage()));
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                color: const Color(0xff47455f),
              ),
              onPressed: () {},
            ),
          ],
        ),
      )
       */
    );
  }
}
