import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'constants.dart';
import 'data.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientEndColor, gradientStartColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'MARVEL',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: Colors.red[700],
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      height: 500,
                      padding: const EdgeInsets.only(left: 32),
                      child: Swiper(
                        itemCount: planets.length,
                        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                        layout: SwiperLayout.STACK,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            activeSize: 20,
                            space: 8,
                          ),
                        ),
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column(children: [
                                        SizedBox(height: 100),
                                        Text(
                                          planets[index].name,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 44,
                                            color: const Color(0xff47455f),
                                            fontWeight: FontWeight.w900,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'Marvel',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 23,
                                            color: primaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 32),
                                        Row(
                                          children: [
                                            Text(
                                              'Vingador',
                                              style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 18,
                                                color: secondaryTextColor,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: Icon(
                                                Icons.arrow_forward,
                                                color: secondaryTextColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                        //Image.asset(planets[index].iconImage),
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Image.asset(planets[index].iconImage),
                              )
                            ],
                          );
                        },
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
