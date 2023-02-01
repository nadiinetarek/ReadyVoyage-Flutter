import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Widgets/footer_content.dart';
import '../../Widgets/icon-font.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List imagesch = ["", "mission.png", "Vision.png", "", "", ""];
  List images = [
    "Aboutus.png",
    "Aboutus2.png",
    "Aboutus3.png",
    "Meetourteam.png",
    "Meetourteam.png",
  ];
  List text = [
    [
      "About us",
      "At Ready voyage, we understand the difficulty of travel. Travel was already always hard to navigate, from organizing your activities to finding the most suitable bookings for hotels and flights. Our idea was to use all of our expertise to create a single platform that contains all your needs for travel from A to Z. An all-in-one travel app",
      "",
      "Ready Voyage"
    ],
    ["Mission", "", "", ""],
    ["Vision", "", "", ""],
    ["", "", "", ""],
    ["", "", "", ""],
    ["", "", "", ""],
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var w = queryData.size.width;
    var h = queryData.size.height;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    var tr = queryData.textScaleFactor;
    var pr = queryData.devicePixelRatio;

    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, length) {
            if (length == 0) {
              return Stack(children: [
                Column(children: [
                  Container(
                      child: Container(
                    width: w,
                    height: h - 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/" + images[length]),
                            fit: BoxFit.fill)),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 30 * hr),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    headertext(
                                      text: "About us",
                                      // size: 40 / tr,
                                    ),
                                    Container(
                                      width: w,
                                      child: midtext(
                                        text:
                                            "At Ready voyage, we understand the difficulty of travel. Travel was already always hard to navigate, from organizing your activities to finding the most suitable bookings for hotels and flights. Our idea was to use all of our expertise to create a single platform that contains all your needs for travel from A to Z. An all-in-one travel app",
                                        color: Colors.black,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        Container(
                            margin:
                                EdgeInsets.only(top: 50 * hr, bottom: 50 * hr),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          child: Image.asset(
                                        "img/aboutus1icon.png",
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      )),
                                      headertext(
                                        text: "Personalized",
                                      ),
                                    ]),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        "img/aboutus2icon.png",
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                      headertext(
                                        text: "Optimized",
                                      ),
                                    ]),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        "img/aboutus3icon.png",
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.fill,
                                      ),
                                      headertext(
                                        text: "All inclusive",
                                      ),
                                    ]),
                              ],
                            ))
                      ],
                    ),
                  )),
                ])
              ]);
            } else if (length == 1) {
              return Stack(children: [
                Container(
                    width: w,
                    height: h - 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/" + images[length]),
                            fit: BoxFit.fill)),
                    child: Container(
                      width: w,
                      margin: EdgeInsets.only(top: 30 * hr, left: 0, right: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(
                                        top: 0, left: 10 * hr, right: 0),
                                    child: headertext(
                                      text: "Mission",
                                    )),
                                Container(
                                    width: w - 20,
                                    margin: EdgeInsets.only(
                                        top: 0,
                                        left: 10 * hr,
                                        right: 0,
                                        bottom: 20),
                                    child: midtext(
                                      text:
                                          "We seek to provide our costumers with the best personalized AI-powered travel plans recommendations within their budget. provide them with all the information they would need including visas, destinations, flights, accommodation and day plans with just a few clicks. ",
                                      color: Colors.black,
                                    )),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Container(
                                    height: h * 0.5,
                                    width: w * 0.65,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/mission.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    )),
              ]);
            } else if (length == 2) {
              return Stack(children: [
                Container(
                    width: w,
                    height: h - 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/" + images[length]),
                            fit: BoxFit.fill)),
                    child: Container(
                      width: w - 20,
                      margin: EdgeInsets.only(
                          top: 50 * hr, left: w * 0.25 - 30, right: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                headertext(
                                  text: "Vision",
                                ),
                                Container(
                                    width: w * 0.75,
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: midtext(
                                      text:
                                          "Our team believes that everyone can travel! No matter what your budget is or where you want to go, with the help from our website, you're in good hands.",
                                      color: Colors.black,
                                      textAlign: TextAlign.right,
                                    )),
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: Container(
                                    height: h * 0.5,
                                    width: w * 0.65,
                                    alignment: Alignment.centerRight,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('img/Vision.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    )),
              ]);
            } else if (length == 3) {
              return Stack(children: [
                Container(
                    width: w,
                    height: h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/" + images[length]),
                            fit: BoxFit.cover)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                headertext(
                                  text: "Meet our team",
                                ),
                                SizedBox(
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.camera_alt_outlined,
                                        size: 25,
                                      ),
                                      tooltip: 'OUR TEAM',
                                      onPressed: () async {
                                        await showDialog(
                                            context: context,
                                            builder: (_) => ImageDialog());
                                      }),
                                ),
                              ]),
                          ResponsiveRowColumn(
                              rowMainAxisAlignment: MainAxisAlignment.center,
                              columnMainAxisAlignment: MainAxisAlignment.start,
                              rowPadding: const EdgeInsets.all(20),
                              columnPadding: const EdgeInsets.all(8),
                              layout: ResponsiveWrapper.of(context)
                                      .isSmallerThan(DESKTOP)
                                  ? ResponsiveRowColumnType.COLUMN
                                  : ResponsiveRowColumnType.ROW,
                              children: [
                                ResponsiveRowColumnItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 1,
                                                right: 1,
                                                top: 5,
                                                bottom: 1),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'img/Meetourteamicon.png'),
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            child: Column(children: [
                                              Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                    image: AssetImage(
                                                        'img/Maryam.png'),
                                                    fit: BoxFit.fill,
                                                  ))),
                                              headertext(
                                                text: "Maryam Yasser",
                                              ),
                                              midtext(
                                                text: "Computer Engineer",
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.add_link,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'LinkedIn',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.linkedin.com/in/maryam-yasser/';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.facebook,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Facebook',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://web.facebook.com/maryam.yasser?_rdc=1&_rdr';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .camera_alt_outlined,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Instagram',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://instagram.com/maryamyasser1?igshid=YmMyMTA2M2Y=';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                ],
                                              )
                                            ])),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 5,
                                                bottom: 1),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'img/Meetourteamicon.png'),
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            child: Column(children: [
                                              Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'img/David.png'),
                                                          fit: BoxFit.fill))),
                                              headertext(
                                                text: "David Helmy",
                                              ),
                                              midtext(
                                                text: "Computer Engineer",
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.add_link,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'LinkedIn',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.linkedin.com/in/davidhelmy/';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.facebook,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Facebook',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://web.facebook.com/david.helmi.56?_rdc=1&_rdr';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .camera_alt_outlined,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Instagram',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.instagram.com/davidhelmyy_/';

                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                ],
                                              )
                                            ]))
                                      ]),
                                ),
                                ResponsiveRowColumnItem(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 5,
                                                bottom: 1),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'img/Meetourteamicon.png'),
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            child: Column(children: [
                                              Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                    image: AssetImage(
                                                        'img/Yehia.png'),
                                                    fit: BoxFit.fill,
                                                  ))),
                                              headertext(
                                                text: "Yehia Ayad",
                                              ),
                                              midtext(
                                                text: "Computer Engineer",
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.add_link,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'LinkedIn',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.linkedin.com/in/yehia-ayad-1a8063195';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.facebook,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Facebook',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://web.facebook.com/yehia.aiad?_rdc=1&_rdr';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .camera_alt_outlined,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Instagram',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.instagram.com/yehiaaiad/';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                ],
                                              )
                                            ])),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 5,
                                                bottom: 1),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'img/Meetourteamicon.png'),
                                                fit: BoxFit.none,
                                              ),
                                            ),
                                            child: Column(children: [
                                              Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'img/Samar.png'),
                                                          fit: BoxFit.fill))),
                                              headertext(
                                                text: "Samar Elgamal",
                                              ),
                                              midtext(
                                                text: "Computer Engineer",
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.add_link,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'LinkedIn',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.linkedin.com/in/samarelgamal/';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons.facebook,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Facebook',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://web.facebook.com/samar.ashraf.3?_rdc=1&_rdr';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  SizedBox(
                                                    child: IconButton(
                                                        icon: Icon(
                                                          Icons
                                                              .camera_alt_outlined,
                                                          size: 25,
                                                        ),
                                                        tooltip: 'Instagram',
                                                        onPressed: () async {
                                                          const url =
                                                              'https://www.instagram.com/samarelgamal__/';
                                                          if (await canLaunch(
                                                              url)) {
                                                            await launch(url);
                                                          } else {
                                                            throw 'Could not launch $url';
                                                          }
                                                        }),
                                                  ),
                                                ],
                                              )
                                            ]))
                                      ]),
                                )
                              ]),
                        ]))
              ]);
            } else {
              return Stack(children: [
                Container(
                    width: w,
                    height: h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/" + images[length]),
                            fit: BoxFit.cover)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                headertext(
                                  text: "Meet our team",
                                ),
                                SizedBox(
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.camera_alt_outlined,
                                        size: 25,
                                      ),
                                      tooltip: 'OUR TEAM',
                                      onPressed: () async {
                                        await showDialog(
                                            context: context,
                                            builder: (_) => ImageDialog());
                                      }),
                                ),
                              ]),
                          ResponsiveRowColumn(
                              rowMainAxisAlignment: MainAxisAlignment.center,
                              columnMainAxisAlignment: MainAxisAlignment.start,
                              rowPadding: const EdgeInsets.all(15),
                              columnPadding: const EdgeInsets.all(15),
                              layout: ResponsiveWrapper.of(context)
                                      .isSmallerThan(TABLET)
                                  ? ResponsiveRowColumnType.COLUMN
                                  : ResponsiveRowColumnType.ROW,
                              children: [
                                ResponsiveRowColumnItem(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 5,
                                              right: 10,
                                              top: 5,
                                              bottom: 5),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/Meetourteamicon.png'),
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: 130,
                                                    width: 130,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                      image: AssetImage(
                                                          'img/Nadine.png'),
                                                      fit: BoxFit.fitHeight,
                                                    ))),
                                                headertext(
                                                  text: "Nadine Tarek",
                                                ),
                                                midtext(
                                                  text: "Computer Engineer",
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      child: IconButton(
                                                          icon: Icon(
                                                            Icons.add_link,
                                                            size: 25,
                                                          ),
                                                          tooltip: 'LinkedIn',
                                                          onPressed: () async {
                                                            const url =
                                                                'https://www.linkedin.com/in/nadine-tarek-2146681a4/';
                                                            if (await canLaunch(
                                                                url)) {
                                                              await launch(url);
                                                            } else {
                                                              throw 'Could not launch $url';
                                                            }
                                                          }),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    SizedBox(
                                                      child: IconButton(
                                                          icon: Icon(
                                                            Icons.facebook,
                                                            size: 25,
                                                          ),
                                                          tooltip: 'Facebook',
                                                          onPressed: () async {
                                                            const url =
                                                                'https://web.facebook.com/nadine.tarek.100?_rdc=1&_rdr';
                                                            if (await canLaunch(
                                                                url)) {
                                                              await launch(url);
                                                            } else {
                                                              throw 'Could not launch $url';
                                                            }
                                                          }),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    SizedBox(
                                                      child: IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .camera_alt_outlined,
                                                            size: 25,
                                                          ),
                                                          tooltip: 'Instagram',
                                                          onPressed: () async {
                                                            const url =
                                                                'https://www.instagram.com/nadiinetarek/';
                                                            if (await canLaunch(
                                                                url)) {
                                                              await launch(url);
                                                            } else {
                                                              throw 'Could not launch $url';
                                                            }
                                                          }),
                                                    ),
                                                  ],
                                                )
                                              ])),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 1,
                                              right: 10,
                                              top: 5,
                                              bottom: 5),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/Meetourteamicon.png'),
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                          child: Column(children: [
                                            Container(
                                                height: 130,
                                                width: 130,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/Islam.png'),
                                                  fit: BoxFit.fill,
                                                ))),
                                            headertext(
                                              text: "Islam Kadous",
                                            ),
                                            midtext(
                                              text: "Computer Engineer",
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  child: IconButton(
                                                      icon: Icon(
                                                        Icons.add_link,
                                                        size: 25,
                                                      ),
                                                      tooltip: 'LinkedIn',
                                                      onPressed: () async {
                                                        const url =
                                                            'https://www.linkedin.com/in/islam-kadous-b3a08b1bb/';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(url);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      }),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                SizedBox(
                                                  child: IconButton(
                                                      icon: Icon(
                                                        Icons.facebook,
                                                        size: 25,
                                                      ),
                                                      tooltip: 'Facebook',
                                                      onPressed: () async {
                                                        const url =
                                                            'https://web.facebook.com/islam.kadous.7?_rdc=1&_rdr';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(url);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      }),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                SizedBox(
                                                  child: IconButton(
                                                      icon: Icon(
                                                        Icons
                                                            .camera_alt_outlined,
                                                        size: 25,
                                                      ),
                                                      tooltip: 'Instagram',
                                                      onPressed: () async {
                                                        const url =
                                                            'https://instagram.com/islamkadous?igshid=YmMyMTA2M2Y=';
                                                        if (await canLaunch(
                                                            url)) {
                                                          await launch(url);
                                                        } else {
                                                          throw 'Could not launch $url';
                                                        }
                                                      }),
                                                ),
                                              ],
                                            )
                                          ]))
                                    ])),
                                ResponsiveRowColumnItem(
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            left: 5,
                                            right: 10,
                                            top: 5,
                                            bottom: 1),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'img/Meetourteamicon.png'),
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        child: Column(children: [
                                          Container(
                                              height: 130,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image:
                                                    AssetImage('img/Yara.png'),
                                                fit: BoxFit.fill,
                                              ))),
                                          headertext(
                                            text: "Yara Gamal",
                                          ),
                                          midtext(
                                            text: "Computer Engineer",
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                child: IconButton(
                                                    icon: Icon(
                                                      Icons.add_link,
                                                      size: 25,
                                                    ),
                                                    tooltip: 'LinkedIn',
                                                    onPressed: () async {
                                                      const url =
                                                          'https://web.facebook.com/yara.gamalmohamed.5?_rdc=1&_rdr';
                                                      if (await canLaunch(
                                                          url)) {
                                                        await launch(url);
                                                      } else {
                                                        throw 'Could not launch $url';
                                                      }
                                                    }),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              SizedBox(
                                                child: IconButton(
                                                    icon: Icon(
                                                      Icons.facebook,
                                                      size: 25,
                                                    ),
                                                    tooltip: 'Facebook',
                                                    onPressed: () async {
                                                      const url =
                                                          'https://web.facebook.com/yara.gamalmohamed.5?_rdc=1&_rdr';
                                                      if (await canLaunch(
                                                          url)) {
                                                        await launch(url);
                                                      } else {
                                                        throw 'Could not launch $url';
                                                      }
                                                    }),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              SizedBox(
                                                child: IconButton(
                                                    icon: Icon(
                                                      Icons.camera_alt_outlined,
                                                      size: 25,
                                                    ),
                                                    tooltip: 'Instagram',
                                                    onPressed: () async {
                                                      const url =
                                                          'https://instagram.com/yaragamal5?igshid=YmMyMTA2M2Y=';
                                                      if (await canLaunch(
                                                          url)) {
                                                        await launch(url);
                                                      } else {
                                                        throw 'Could not launch $url';
                                                      }
                                                    }),
                                              ),
                                            ],
                                          )
                                        ])))
                              ])
                        ]))
              ]);
            }
          }),
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 600,
        child: Image.network(
            "https://i.postimg.cc/L4vDznJ5/Whats-App-Image-2022-06-20-at-4-46-34-AM.jpg"),
      ),
    );
  }
}

class headertext extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;
  headertext(
      {Key? Key,
      this.textAlign,
      this.size = 50,
      required this.text,
      this.color = Colors.black})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    var er = ResponsiveValue(
      context,
      defaultValue: 28.0,
      valueWhen: const [
        Condition.smallerThan(
          name: TABLET,
          value: 20.0,
        ),
        Condition.largerThan(name: TABLET, value: 39.0)
      ],
    ).value;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontFamily: "GlacialIndifference",
          color: color,
          fontSize: er,
          fontWeight: FontWeight.bold),
    );
  }
}

class midtext extends StatelessWidget {
  final textAlign;
  double size;
  final String text;
  final Color color;

  midtext({
    Key? Key,
    this.textAlign,
    this.size = 30,
    required this.text,
    this.color = Colors.black54,
  }) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    var er = ResponsiveValue(
      context,
      defaultValue: 20.0,
      valueWhen: const [
        Condition.smallerThan(
          name: TABLET,
          value: 15.0,
        ),
        Condition.largerThan(name: TABLET, value: 23.5)
      ],
    ).value;

    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: "GlacialIndifference",
        color: color,
        fontSize: er,
      ),
    );
  }
}
