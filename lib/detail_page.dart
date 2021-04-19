import 'package:flutter/material.dart';
import 'package:flutter_flower/constants.dart';
import 'package:flutter_flower/flower_data.dart';
import 'package:flutter_flower/second_data.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class DetailPage extends StatelessWidget {
  final FlowerInfo flowerInfo;

  const DetailPage({Key key, this.flowerInfo, SecondInfo secondInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return;
        },
        child: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 3,
                                      offset: Offset(0, 0),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/datanthuastic.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/sun.png'),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  showToast(flowerInfo.sun,
                                      context: context,
                                      animation: StyledToastAnimation
                                          .slideFromRightFade,
                                      reverseAnimation:
                                          StyledToastAnimation.slideToRightFade,
                                      toastHorizontalMargin: 0.0,
                                      position: StyledToastPosition(
                                          align: Alignment.topRight,
                                          offset: 260.0),
                                      startOffset: Offset(1.0, 0.0),
                                      reverseEndOffset: Offset(1.0, 0.0),
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 4),
                                      curve: Curves.linearToEaseOut,
                                      reverseCurve: Curves.fastOutSlowIn);
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/degree.png'),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  showToast(flowerInfo.degree,
                                      context: context,
                                      animation: StyledToastAnimation
                                          .slideFromRightFade,
                                      reverseAnimation:
                                          StyledToastAnimation.slideToRightFade,
                                      toastHorizontalMargin: 0.0,
                                      position: StyledToastPosition(
                                          align: Alignment.topRight,
                                          offset: 260.0),
                                      startOffset: Offset(1.0, 0.0),
                                      reverseEndOffset: Offset(1.0, 0.0),
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 4),
                                      curve: Curves.linearToEaseOut,
                                      reverseCurve: Curves.fastOutSlowIn);
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 3,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/drop.png'),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  showToast(flowerInfo.water,
                                      context: context,
                                      animation: StyledToastAnimation
                                          .slideFromRightFade,
                                      reverseAnimation:
                                          StyledToastAnimation.slideToRightFade,
                                      toastHorizontalMargin: 0.0,
                                      position: StyledToastPosition(
                                          align: Alignment.topRight,
                                          offset: 260.0),
                                      startOffset: Offset(1.0, 0.0),
                                      reverseEndOffset: Offset(1.0, 0.0),
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 4),
                                      curve: Curves.linearToEaseOut,
                                      reverseCurve: Curves.fastOutSlowIn);
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            flowerInfo.name,
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                              fontFamily: 'Avenir',
                              fontSize: 56,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Evcil Çicekler',
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Colors.grey,
                                ),
                              ],
                              fontFamily: 'Avenir',
                              fontSize: 31,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Divider(
                            color: Colors.black38,
                            thickness: 2,
                          ),
                          /*
                          Text(
                            flowerInfo.description ?? '',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: const Color(0xff868686),
                                fontWeight: FontWeight.w500),
                          ),
                          */
                          Container(
                            width: 350,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ],
                              ),
                            ),
                            child: NotificationListener<
                                OverscrollIndicatorNotification>(
                              onNotification:
                                  (OverscrollIndicatorNotification overscroll) {
                                overscroll.disallowGlow();
                                return;
                              },
                              child: SingleChildScrollView(
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(15),
                                    child: Text(
                                      flowerInfo.description,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.black38,
                            thickness: 2,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        "Foto-Galeri",
                        style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Colors.grey,
                            ),
                          ],
                          fontFamily: 'Avenir',
                          fontSize: 25,
                          color: const Color(0xff47455f),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 32.0),
                      height: 250,
                      child: ListView.builder(
                        itemCount: flowerInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    flowerInfo.images[index],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10,
                right: -100,
                child: Hero(
                    tag: flowerInfo.position,
                    child: Image.asset(flowerInfo.iconImage)),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
