import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:ready_voyage/Widgets/header_text.dart';
import 'package:ready_voyage/Widgets/mid-text.dart';

class Body extends StatelessWidget {
  // const Body({Key? key}) : super(key: key);
  List conditions = [1, 2, 3];
  late int condition;

  List images = [
    "whitebackground.png",
    "whitebackground.png",
    "whitebackground.png",
  ];

  List homepage = [
    "assets/homepage.png",
    "assets/homepage2.png",
    "assets/homepage3.png",
    "assets/homepage4.png",
  ];

  final carousel = CarouselSlider(
    items: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/homepage.png').image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/homepage2.png').image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/homepage3.png').image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/homepage4.png').image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ],
    options: CarouselOptions(
      height: 810.0,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16 / 16,
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 600),
      viewportFraction: 1,
    ),
  );

  final title_container = Container(
    padding: EdgeInsets.all(100.0),
    child: Row(
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headertext(text: 'Explore'),
            SizedBox(
              height: 18.0,
            ),
            midtext(
              text: 'All the wonderful places around the globe',
              size: 30,
            ),
            SizedBox(
              height: 18.0,
            ),
            midtext(
                text:
                    'Plan your next vacation, find the perfect trip within the budget with ease, are you ready?',
                size: 20),
          ],
        ),
      ],
    ),
  );

  final secondpage1 = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 40.0,
      ),
      midtext(
        size: 20,
        text: "Browse through our most significant destinations, ",
        color: Colors.black,
      ),
      SizedBox(
        height: 18.0,
      ),
      midtext(
        size: 20,
        text: "supporting our costumers by letting them customize",
        color: Colors.black,
      ),
      SizedBox(
        height: 18.0,
      ),
      midtext(
        size: 20,
        text: " their own convenient trip.",
        color: Colors.black,
      ),
      SizedBox(
        height: 18.0,
      ),
    ],
  );

  final secondpage2 = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      SizedBox(
        height: 100.0,
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          color: Colors.black54,
          // borderRadius: BorderRadius.all(Radius.circular(30.0)),
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {
              //Implement login functionality.
            },
            minWidth: 200.0,
            height: 42.0,
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'All Trips',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text('Find your perfect trip amongst all trips available',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
              trailing: Icon(Icons.book_online_outlined),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          color: Colors.black54,
          // borderRadius: BorderRadius.all(Radius.circular(30.0)),
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {
              //Implement login functionality.
            },
            minWidth: 200.0,
            height: 42.0,
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Customize your trips',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text('Give us your requirements, we give you your trip',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
              trailing: Icon(TablerIcons.pencil),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          color: Colors.black54,
          // borderRadius: BorderRadius.all(Radius.circular(30.0)),
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {
              //Implement login functionality.
            },
            minWidth: 200.0,
            height: 42.0,
            child: ListTile(
              title: Row(
                children: [
                  Text(
                    'Join us',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text('Create an account or login',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
              trailing: Icon(Icons.person_add_rounded),
            ),
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    // final controller = PageController(
    //   initialPage: 0,
    // );

    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (_, index) {
        condition = conditions[index];
        print(condition);
        if (condition == 1) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/" + images[index]),
                    fit: BoxFit.fill)),
            child: Container(
                child: Stack(
              children: [
                carousel,
                title_container,
                Align(
                  alignment: FractionalOffset(0.1, 0.5),
                  child: Container(
                    constraints: BoxConstraints.expand(
                      width: 400.0,
                      height: 70.0,
                    ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(Icons.search),
                        title: TextField(
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.white),
                          decoration: const InputDecoration(
                              hintText: 'Where to  ...?',
                              border: InputBorder.none),

// onChanged: onSearchTextChanged,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
          );
        } else if (condition == 2) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/" + images[index]),
                    fit: BoxFit.fill)),
            child: ListView(
              children: [
                secondpage1,
                secondpage2,
              ],
            ),
          );
        }

        return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/" + images[index]),
                    fit: BoxFit.fill)));
      },
    ));
  }
}
