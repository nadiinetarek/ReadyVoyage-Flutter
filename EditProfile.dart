import 'dart:html';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:intl/intl.dart';
import 'package:ready_voyage/Trips/tripprogram/program.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../Widgets/Back.dart';
import '../../Widgets/Birthdayfield.dart';
import '../../Widgets/Saveedits.dart';
import '../../Widgets/Usernamefield.dart';
import '../../Widgets/footer_content.dart';
import '../../Widgets/icon-font.dart';
import '../../functions.dart';
import '../../model/user.dart';
import '../../validation.dart';
import 'Userprofile.dart';
import '../../Widgets/ayad-text.dart';
import '../../Widgets/ayad-text2.dart';

class Editprofile extends StatefulWidget {
  Editprofile({Key? key}) : super(key: key);

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  var namoo = "Upload Image";
  var current_user_photo;
  var count = 0;
  // final picker = ImagePicker();
  String user_name_message = '';
  String Birthday_message = '';
  String Birthmonth_message = '';
  String Birthyear_message = '';
  bool image_update = false;
  String image_name = '';
  List<int> image_bytes = [];
  @override
  Widget build(BuildContext context) {
    if (is_user_loggedin() == false) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Programpage(
              currentIndex: 0,
            );
          },
        ),
      );
    }
    User current_user = get_current_user();
    TextEditingController username_controller =
        TextEditingController(text: current_user.username);
    var birthdate = DateTime.parse(current_user.birth_date);
    TextEditingController birthday_controller =
        TextEditingController(text: birthdate.day.toString());
    TextEditingController birthmonth_controller =
        TextEditingController(text: birthdate.month.toString());
    TextEditingController birthyear_controller =
        TextEditingController(text: birthdate.year.toString());
    if (count == 0) {
      if (current_user.photo == 'null') {
        current_user_photo = AssetImage('img/Try.png');
      } else {
        current_user_photo = NetworkImage(current_user.photo);
      }
    }

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var w = queryData.size.width;
    var h = queryData.size.height;
    var hr = h / 753.5999755859375;
    var wr = w / 981.5999755859375;
    var tr = queryData.textScaleFactor;
    var pr = queryData.devicePixelRatio;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/Editprofile.png"), fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: IntrinsicHeight(
                  child: Stack(children: [
                Container(
                  width: w,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Backhome(Page: const user()),
                        iconfont(
                          text: "Ready Voyage",
                          color: Colors.black,
                          size: 50,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          headertext(
                            text:
                                "Hello ${current_user.first_name} ${current_user.last_name}.",
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          midtext(
                            text: "This is where you can edit your profile. ",
                            color: Colors.black,
                          )
                        ],
                      ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: ResponsiveRowColumn(
                                  rowMainAxisAlignment: MainAxisAlignment.start,
                                  columnMainAxisAlignment:
                                      MainAxisAlignment.center,
                                  columnCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  rowPadding: const EdgeInsets.all(20),
                                  columnPadding: const EdgeInsets.all(10),
                                  layout: ResponsiveWrapper.of(context)
                                          .isSmallerThan(TABLET)
                                      ? ResponsiveRowColumnType.COLUMN
                                      : ResponsiveRowColumnType.ROW,
                                  children: [
                                    ResponsiveRowColumnItem(
                                      child: Container(
                                        height: 200,
                                        width: 200,
                                        child: Container(
                                          child: CircleAvatar(
                                            backgroundImage: current_user_photo,
                                            radius: 60.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    ResponsiveRowColumnItem(
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 10, left: 50),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors
                                                    .black, // Background color
                                              ),
                                              onPressed: () async {
                                                var types = [
                                                  'jpg',
                                                  'png',
                                                  'jpeg'
                                                ];
                                                //String fileName = file.path.split('/').last;
//print("File Name: $fileName");
                                                var picked = await FilePicker
                                                    .platform
                                                    .pickFiles();
                                                if (picked != null &&
                                                    types.contains(picked.files
                                                        .first.extension)) {
                                                  image_update = true;
                                                  image_name =
                                                      picked.files.first.name;
                                                  namoo =
                                                      picked.files.first.name;

                                                  image_bytes = picked
                                                      .files.first.bytes!
                                                      .toList();
                                                  print(image_bytes);
                                                  current_user_photo =
                                                      Image.memory(Uint8List
                                                              .fromList(picked
                                                                  .files
                                                                  .first
                                                                  .bytes!))
                                                          .image;
                                                  count = 1;
                                                  setState(() {});
                                                  showAlertDialog(context, 1);
                                                } else {
                                                  namoo = "Upload Image";
                                                  setState(() {});
                                                  showAlertDialog(context, 2);
                                                }
                                              },
                                              child: Text(
                                                namoo,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ResponsiveRowColumnItem(
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(top: 10, left: 50),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors
                                                    .black, // Background color
                                              ),
                                              onPressed: () async {
                                                var qw = 0;
                                                try {
                                                  await availableCameras();
                                                } on CameraException {
                                                  showAlertDialog(context, 2);
                                                  qw = 1;
                                                }
                                                if (qw != 1) {
                                                  var tr;
                                                  tr = await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (BuildContext
                                                                context) =>
                                                            Home()),
                                                  );
                                                  if (tr != null) {
                                                    image_update = true;
                                                    image_name =
                                                        current_user.username +
                                                            Random()
                                                                .nextInt(100)
                                                                .toString() +
                                                            ".png";

                                                    current_user_photo =
                                                        Image.memory(Uint8List
                                                                .fromList(tr))
                                                            .image;
                                                    image_bytes = tr!.toList();
                                                    //tr.toList();
                                                    print(image_bytes);
                                                    count = 1;
                                                    namoo = "Upload Image";
                                                    setState(() {});

                                                    showAlertDialog(context, 1);
                                                  } else {
                                                    setState(() {});
                                                    showAlertDialog(context, 2);
                                                  }
                                                }
                                              },
                                              child: Text(
                                                "Take a Picture",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ]),
                            ),
                            Container(
                              child: ResponsiveRowColumn(
                                  rowMainAxisAlignment: MainAxisAlignment.start,
                                  columnMainAxisAlignment:
                                      MainAxisAlignment.center,
                                  columnCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  rowPadding: const EdgeInsets.all(20),
                                  columnPadding: const EdgeInsets.all(10),
                                  layout: ResponsiveWrapper.of(context)
                                          .isSmallerThan(TABLET)
                                      ? ResponsiveRowColumnType.COLUMN
                                      : ResponsiveRowColumnType.ROW,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: Container(
                                      margin:
                                          EdgeInsets.only(top: 10, left: 50),
                                      child: headertext(
                                        text: "E-mail:",
                                        color: Colors.black,
                                      ),
                                    )),
                                    ResponsiveRowColumnItem(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        margin:
                                            EdgeInsets.only(top: 10, left: 20),
                                        padding: EdgeInsets.all(5),
                                        child: midtext(
                                          text: current_user.email,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            ResponsiveRowColumn(
                                rowMainAxisAlignment: MainAxisAlignment.start,
                                columnMainAxisAlignment:
                                    MainAxisAlignment.start,
                                columnCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                rowPadding: const EdgeInsets.all(20),
                                columnPadding: const EdgeInsets.all(10),
                                layout: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? ResponsiveRowColumnType.COLUMN
                                    : ResponsiveRowColumnType.ROW,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Container(
                                    margin: EdgeInsets.only(top: 10, left: 50),
                                    child: headertext(
                                      text: "Username:",
                                      color: Colors.black,
                                    ),
                                  )),
                                  ResponsiveRowColumnItem(
                                    child: Container(
                                      width: 300,
                                      margin:
                                          EdgeInsets.only(top: 10, left: 20),
                                      child: username(
                                          child: TextField(
                                        controller: username_controller,
                                        cursorColor: Colors.black45,
                                        decoration: InputDecoration(
                                            errorText:
                                                user_name_message.isNotEmpty
                                                    ? user_name_message
                                                    : null,
                                            border: InputBorder.none,
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            icon: Icon(
                                              Icons.person_rounded,
                                              color: Colors.black,
                                            ),
                                            hintText: "Admin123"),
                                      )),
                                    ),
                                  )
                                ])
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            ResponsiveRowColumn(
                                rowMainAxisAlignment: MainAxisAlignment.start,
                                columnMainAxisAlignment:
                                    MainAxisAlignment.center,
                                columnCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                rowPadding: const EdgeInsets.all(20),
                                columnPadding: const EdgeInsets.all(20),
                                layout: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? ResponsiveRowColumnType.COLUMN
                                    : ResponsiveRowColumnType.ROW,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Container(
                                    margin: EdgeInsets.only(top: 10, left: 50),
                                    child: headertext(
                                      text: "Birthday:",
                                      color: Colors.black,
                                    ),
                                  )),
                                  ResponsiveRowColumnItem(
                                    child: Container(
                                      width: 280,
                                      margin:
                                          EdgeInsets.only(top: 10, left: 20),
                                      child: Row(children: [
                                        Container(
                                          width: 85,
                                          child: Birthday(
                                            child: TextField(
                                              controller: birthday_controller,
                                              cursorColor: Colors.black45,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                  errorText: Birthday_message
                                                          .isNotEmpty
                                                      ? Birthday_message
                                                      : null,
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  hintText: "Day"),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 85,
                                          child: Birthday(
                                            child: TextField(
                                              controller: birthmonth_controller,
                                              cursorColor: Colors.black45,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                  errorText: Birthmonth_message
                                                          .isNotEmpty
                                                      ? Birthmonth_message
                                                      : null,
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  hintText: "Month"),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 85,
                                          child: Birthday(
                                            child: TextField(
                                              controller: birthyear_controller,
                                              cursorColor: Colors.black45,
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                  errorText: Birthyear_message
                                                          .isNotEmpty
                                                      ? Birthyear_message
                                                      : null,
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black),
                                                  ),
                                                  hintText: "Year"),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  )
                                ])
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: ResponsiveRowColumn(
                                  rowMainAxisAlignment: MainAxisAlignment.start,
                                  columnMainAxisAlignment:
                                      MainAxisAlignment.center,
                                  columnCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  rowPadding: const EdgeInsets.all(20),
                                  columnPadding: const EdgeInsets.all(10),
                                  layout: ResponsiveWrapper.of(context)
                                          .isSmallerThan(TABLET)
                                      ? ResponsiveRowColumnType.COLUMN
                                      : ResponsiveRowColumnType.ROW,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: Container(
                                      margin:
                                          EdgeInsets.only(top: 10, left: 50),
                                      child: headertext(
                                        text: "Gender:",
                                        color: Colors.black,
                                      ),
                                    )),
                                    ResponsiveRowColumnItem(
                                      child: Container(
                                        width: 300,
                                        margin:
                                            EdgeInsets.only(top: 10, left: 20),
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 5),
                                          width: 360,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black, width: 2),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: DropDown<String>(
                                            items: <String>["M", "F"],
                                            icon: Icon(
                                              Icons.expand_more,
                                              color: Colors.blue,
                                            ),
                                            customWidgets: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Text("Male"),
                                                ],
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Text("Female"),
                                                ],
                                              ),
                                            ],
                                            hint: Text("Select Gender"),
                                            initialValue:
                                                (current_user.gender == "M")
                                                    ? "M"
                                                    : "F",
                                            onChanged: (gen) {
                                              current_user.gender =
                                                  gen.toString();
                                            },
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Save(
                                    text: 'SAVE',
                                    color: Colors.black87,
                                    press: () async {
                                      if (image_update == true &&
                                          image_name.isNotEmpty &&
                                          image_bytes.isNotEmpty) {
                                        var imgres = await update_user_image(
                                            current_user,
                                            image_bytes,
                                            image_name);
                                      }
                                      bool have_date = true;
                                      setState(() {
                                        if (username_controller.text.isEmpty) {
                                          user_name_message =
                                              'Field is Required';
                                        } else {
                                          user_name_message = '';
                                        }
                                        if (birthday_controller.text.isEmpty) {
                                          Birthday_message =
                                              'Field is Required';
                                          have_date = false;
                                        } else {
                                          Birthday_message = '';
                                        }
                                        if (birthmonth_controller
                                            .text.isEmpty) {
                                          Birthmonth_message =
                                              'Field is Required';
                                          have_date = false;
                                        } else {
                                          Birthmonth_message = '';
                                        }
                                        if (birthyear_controller.text.isEmpty) {
                                          Birthyear_message =
                                              'Field is Required';
                                          have_date = false;
                                        } else {
                                          Birthyear_message = '';
                                        }
                                        if (have_date == true) {
                                          var map = is_date_valid(
                                              int.parse(
                                                  birthday_controller.text),
                                              int.parse(
                                                  birthmonth_controller.text),
                                              int.parse(
                                                  birthyear_controller.text));
                                          if (map['day'] != null) {
                                            Birthday_message = map['day'];
                                          }
                                          if (map['month'] != null) {
                                            Birthmonth_message = map['month'];
                                          }
                                          if (map['year'] != null) {
                                            Birthyear_message = map['year'];
                                          }
                                        }
                                      });
                                      if (user_name_message.isEmpty &&
                                          Birthday_message.isEmpty &&
                                          Birthmonth_message.isEmpty &&
                                          Birthyear_message.isEmpty) {
                                        current_user.username =
                                            username_controller.text;
                                        DateTime bdate = DateTime(
                                            int.parse(
                                                birthyear_controller.text),
                                            int.parse(
                                                birthmonth_controller.text),
                                            int.parse(
                                                birthday_controller.text));
                                        final DateFormat formatter =
                                            DateFormat('yyyy-MM-dd');
                                        final String formatted_date =
                                            formatter.format(bdate);
                                        current_user.birth_date =
                                            formatted_date;
                                        var response =
                                            await update_user(current_user);
                                        if (response == true) {
                                          setState(() {
                                            current_user = get_current_user();
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return Programpage(
                                                    currentIndex: 2,
                                                  );
                                                },
                                              ),
                                            );
                                          });
                                        }
                                      }
                                    },
                                  ),
                                ])
                          ]),
                    ),
                  ]),
                ),
              ])))),
    );
  }
}

showAlertDialog(BuildContext context, var t) {
  // Create button
  Widget okButton = TextButton(
    child: Text(
      "OK",
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  var e = (t == 1)
      ? "Successfully Uploaded Your New Picture"
      : "Please Upload a valid picture type";

  var w = (t == 1) ? Colors.green : Colors.red;

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("NOTICE"),
    backgroundColor: w,
    content: Text(e),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CameraDescription>? cameras; //list out the camera available
  CameraController? controller; //controller for camera
  XFile? image; //for captured image

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
    try {
      cameras = await availableCameras();
    } on CameraException {
      Navigator.pop(context, Null); //show error
    }
    if (cameras != null) {
      controller = CameraController(cameras![0], ResolutionPreset.max);
      //cameras[0] = first camera, change to 1 to another camera

      controller!.initialize().then((_) {
        if (!mounted) {
          Navigator.pop(context, Null);
        }
        setState(() {});
      });
    } else {
      print("NO any camera found");
      Navigator.pop(context, Null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capture Image from Camera"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
          child: Column(children: [
        Container(
            height: 400,
            width: 400,
            child: controller == null
                ? Center(child: Text("Loading Camera..."))
                : !controller!.value.isInitialized
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : CameraPreview(controller!)),
        ElevatedButton.icon(
          //image capture button
          onPressed: () async {
            try {
              if (controller != null) {
                //check if contrller is not null
                if (controller!.value.isInitialized) {
                  //check if controller is initialized
                  final xFile = await controller!.takePicture(); //capture image
                  final bytes = await xFile.readAsBytes();
                  controller?.dispose();
                  Navigator.pop(context, bytes);
                }
              } else {
                Navigator.pop(context, Null);
              }
            } catch (e) {
              Navigator.pop(context, Null);

              print(e); //show error
            }
          },
          icon: Icon(Icons.camera),
          label: Text("Capture"),
        ),
      ])),
    );
  }
}
