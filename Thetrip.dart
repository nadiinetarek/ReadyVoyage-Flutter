import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_voyage/Trips/trips1.dart';
import 'package:ready_voyage/Widgets/Rating1.dart';
import 'package:ready_voyage/model/trip.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../Widgets/Back.dart';
import '../../Widgets/icon-font.dart';

class Display extends StatefulWidget {
  Trip trip;
  Display({Key? key, required this.trip}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> with TickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: widget.trip.mDays, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _tabIndex = _tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var n = widget.trip.mDays;
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var w = queryData.size.width;
    var h = queryData.size.height;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    var tr = queryData.textScaleFactor;
    var pr = queryData.devicePixelRatio;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: IntrinsicHeight(
                child: Stack(children: [
              Container(
                  constraints: BoxConstraints(minHeight: h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/Daydisplay.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 5, right: 5, top: 10, bottom: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Backhome(
                              Page: TripsPage(),
                            ),
                            headertext(text: "YOUR TRIP"),
                            iconfont(
                              text: "Ready Voyage",
                              color: Colors.black,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        widget.trip.mCityPic,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return Image.asset("img/try.png",
                                              height: 250,
                                              fit: BoxFit.scaleDown);
                                        },
                                        fit: BoxFit.scaleDown,
                                        height: 300,
                                      )),
                                  headertext(text: widget.trip.mStartCity),
                                ],
                              ),
                            ),
                          ]),
                      Column(children: <Widget>[
                        Divider(
                          color: Colors.black87,
                          thickness: 2,
                        )
                      ]),
                      Column(children: <Widget>[
                        Divider(
                          color: Colors.black87,
                          thickness: 2,
                        )
                      ]),
                      Container(
                        child: ResponsiveRowColumn(
                            rowMainAxisAlignment: MainAxisAlignment.spaceAround,
                            columnMainAxisAlignment: MainAxisAlignment.center,
                            rowPadding: const EdgeInsets.all(10),
                            columnPadding: const EdgeInsets.all(10),
                            layout: ResponsiveWrapper.of(context)
                                    .isSmallerThan(DESKTOP)
                                ? ResponsiveRowColumnType.COLUMN
                                : ResponsiveRowColumnType.ROW,
                            children: [
                              ResponsiveRowColumnItem(
                                  child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  widget.trip.mHotel['pic_url'],
                                  errorBuilder: (context, error, stackTrace) {
                                    return Image.asset("img/try.png",
                                        height: 250, fit: BoxFit.scaleDown);
                                  },
                                  fit: BoxFit.scaleDown,
                                  height: 250,
                                ),
                              )),
                              ResponsiveRowColumnItem(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    midtext(
                                      text: "Name:",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    headertext(
                                      text: widget.trip.mHotel['name'],
                                    ),
                                  ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: [
                                    midtext(
                                      text: "Address:",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    headertext(
                                      text: widget.trip.mHotel['Address']
                                          ['streetAddress'],
                                    )
                                  ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: [
                                    midtext(
                                      text: "Price:",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    headertext(
                                        text:
                                            "${widget.trip.mHotel['night_price']} per night",
                                        size: 15)
                                  ]),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: [
                                    midtext(
                                      text: "Rating:",
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    headertext(
                                        text:
                                            "${widget.trip.mHotel['starRating']} stars"),
                                  ]),
                                ],
                              ))
                            ]),
                      ),
                      Container(
                          width: w,
                          child: Column(children: [
                            Column(children: <Widget>[
                              Divider(
                                color: Colors.black87,
                                thickness: 2,
                              )
                            ]),
                          ])),
                      Material(
                          color: Color.fromARGB(255, 75, 83, 129),
                          child: TabBar(
                            controller: _tabController,
                            isScrollable: true,
                            labelColor: Colors.white,
                            tabs: [
                              for (int i = 0; i < n; i++)
                                Tab(text: "Day " + (i + 1).toString()),
                            ],
                          )),
                      Container(
                        child: [
                          for (int i = 0; i < n; i++)
                            Column(
                              children: [
                                Column(children: <Widget>[
                                  Divider(
                                    color: Colors.black87,
                                    thickness: 2,
                                  )
                                ]),
                                ResponsiveRowColumn(
                                    rowMainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.center,
                                    rowPadding: const EdgeInsets.all(10),
                                    columnPadding: const EdgeInsets.all(10),
                                    layout: ResponsiveWrapper.of(context)
                                            .isSmallerThan(DESKTOP)
                                        ? ResponsiveRowColumnType.COLUMN
                                        : ResponsiveRowColumnType.ROW,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          "https://cf.bstatdic.com/xdata/images/hotel/max1024x768/45629869.jpg?k=4e4cbfc68eb50d1cf1830ef9af3f5fc9621f1159ddb4584c1a4463a73345ecb3&o=&hp=1",
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Image.asset("img/try.png",
                                                height: 250,
                                                fit: BoxFit.scaleDown);
                                          },
                                          fit: BoxFit.scaleDown,
                                          height: 250,
                                        ),
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            midtext(
                                              text: "Name:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(
                                              text: widget.trip
                                                      .mTrip['Day ${i + 1}'][0]
                                                  ['name'],
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(children: [
                                            midtext(
                                              text: "Check on Maps:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(
                                              text: 'fess',
                                            )
                                          ]),
                                        ],
                                      ))
                                    ]),
                                Column(children: <Widget>[
                                  Divider(
                                    color: Colors.black87,
                                    thickness: 2,
                                  )
                                ]),
                                ResponsiveRowColumn(
                                    rowTextDirection: TextDirection.rtl,
                                    rowMainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.center,
                                    rowPadding: const EdgeInsets.all(10),
                                    columnPadding: const EdgeInsets.all(10),
                                    layout: ResponsiveWrapper.of(context)
                                            .isSmallerThan(DESKTOP)
                                        ? ResponsiveRowColumnType.COLUMN
                                        : ResponsiveRowColumnType.ROW,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/45629869.jpg?k=4e4cbfc68eb50d1cf1830ef9af3f5fc9621f1159ddb4584c1a4463a73345ecb3&o=&hp=1",
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Image.asset("img/try.png",
                                                height: 250,
                                                fit: BoxFit.scaleDown);
                                          },
                                          fit: BoxFit.scaleDown,
                                          height: 250,
                                        ),
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            midtext(
                                              text: "Name:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(
                                              text: "Best hotel ever",
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(children: [
                                            midtext(
                                              text: "Check on Maps:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(text: "4.1 stars"),
                                          ]),
                                        ],
                                      ))
                                    ]),
                                Column(children: <Widget>[
                                  Divider(
                                    color: Colors.black87,
                                    thickness: 2,
                                  )
                                ]),
                                ResponsiveRowColumn(
                                    rowMainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.center,
                                    rowPadding: const EdgeInsets.all(10),
                                    columnPadding: const EdgeInsets.all(10),
                                    layout: ResponsiveWrapper.of(context)
                                            .isSmallerThan(DESKTOP)
                                        ? ResponsiveRowColumnType.COLUMN
                                        : ResponsiveRowColumnType.ROW,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/45629869.jpg?k=4e4cbfc68eb50d1cf1830ef9af3f5fc9621f1159ddb4584c1a4463a73345ecb3&o=&hp=1",
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Image.asset("img/try.png",
                                                height: 250,
                                                fit: BoxFit.scaleDown);
                                          },
                                          fit: BoxFit.scaleDown,
                                          height: 250,
                                        ),
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            midtext(
                                              text: "Name:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(
                                              text: "Best hotel ever",
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(children: [
                                            midtext(
                                              text: "Check on Maps:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(text: "4.1 stars"),
                                          ]),
                                        ],
                                      ))
                                    ]),
                                Column(children: <Widget>[
                                  Divider(
                                    color: Colors.black87,
                                    thickness: 2,
                                  )
                                ]),
                                ResponsiveRowColumn(
                                    rowTextDirection: TextDirection.rtl,
                                    rowMainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.center,
                                    rowPadding: const EdgeInsets.all(10),
                                    columnPadding: const EdgeInsets.all(10),
                                    layout: ResponsiveWrapper.of(context)
                                            .isSmallerThan(DESKTOP)
                                        ? ResponsiveRowColumnType.COLUMN
                                        : ResponsiveRowColumnType.ROW,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          "https://cf.bstatic.com/xdata/images/hotel/max1024x768/45629869.jpg?k=4e4cbfc68eb50d1cf1830ef9af3f5fc9621f1159ddb4584c1a4463a73345ecb3&o=&hp=1",
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Image.asset("img/try.png",
                                                height: 250,
                                                fit: BoxFit.scaleDown);
                                          },
                                          fit: BoxFit.scaleDown,
                                          height: 250,
                                        ),
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            midtext(
                                              text: "Name:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(
                                              text: "Best hotel ever",
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(children: [
                                            midtext(
                                              text: "Check on Maps:",
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            headertext(text: "4.1 stars"),
                                          ]),
                                        ],
                                      ))
                                    ])
                              ],
                            )
                        ][_tabIndex],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, bottom: 30 * hr),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.blue,
                              backgroundColor: Colors.yellow),
                          onPressed: () async {
                            await showDialog(
                                context: context,
                                builder: (_) => ImageDialog());
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            child: midtext(text: 'Rate Me!'),
                            alignment: Alignment.center,
                          ),
                        ),
                      )
                    ],
                  )),
            ]))));
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
      defaultValue: 30.0,
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

class ImageDialog extends StatefulWidget {
  ImageDialog({Key? key}) : super(key: key);

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  var trip;
  var rate = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 600,
        height: 450,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              headertext(text: "Rate Your trip 0-5"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StarRating(
                    starCount: 5,
                    rating: rate,
                    color: Colors.yellow,
                    onRatingChanged: (value) {
                      rate = (value * 1) as int;
                      setState(() {});
                    },
                  ),
                ],
              ),
              Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.blue, backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Container(
                    height: 40,
                    width: 100,
                    child: midtext(
                      text: 'Submit',
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
