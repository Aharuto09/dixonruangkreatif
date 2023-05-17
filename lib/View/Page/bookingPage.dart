import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:dixweb1/Module/pallete.dart';
import 'package:dixweb1/View/Page/completeOrder.dart';

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class bookingPage extends StatefulWidget {
  bookingPage({super.key});

  State<bookingPage> createState() => _bookingPageState();
}

class _bookingPageState extends State<bookingPage> {
  DateTime? pickedDate = DateTime.now();
  List<bool> _selectCrew = List<bool>.generate(10, (counter) => false);
  int _selectedCrew = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    Widget checkoutView = Container(
      padding: EdgeInsets.all(20),
      width: 200,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "CHECKOUT",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(crewColor[1])),
          ),
          Spacer(),
          ElevatedButton(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Text("Send Now"),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => completeOrder()));
              }),
        ],
      ),
    );
    return Scaffold(
        key: _key,
        drawer: Drawer(child: checkoutView),
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Color(0xffdce7ed),
            ),
            Container(
              width: 1100,
              decoration: BoxDecoration(color: Color(0xfff6f7f9), boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.black12)
              ]),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back)),
                            Text(
                              "Reservation",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 12, color: Colors.black12)
                                ]),
                            child: Container(
                              child: SingleChildScrollView(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 10),
                                        Text("Full Name"),
                                        SizedBox(height: 10),
                                        TextField(
                                            decoration: InputDecoration(
                                                label: Text("Full Name"),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        SizedBox(height: 10),
                                        Text("Email Address"),
                                        SizedBox(height: 10),
                                        TextField(
                                            decoration: InputDecoration(
                                                label: Text("Email Address"),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        SizedBox(height: 10),
                                        Text("Address"),
                                        SizedBox(height: 10),
                                        TextField(
                                            decoration: InputDecoration(
                                                label: Text("Address"),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        SizedBox(height: 10),
                                        Text("City"),
                                        SizedBox(height: 10),
                                        TextField(
                                            decoration: InputDecoration(
                                                label: Text("City"),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        SizedBox(height: 10),
                                        Text("Phone Number",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1),
                                        SizedBox(height: 10),
                                        TextField(
                                            decoration: InputDecoration(
                                                label: Text("Phone Number"),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        SizedBox(height: 10),
                                        Text("Select Date",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1),
                                        SizedBox(height: 10),
                                        DatePicker(
                                          DateTime.now(),
                                          initialSelectedDate: DateTime.now(),
                                          selectionColor: Palette.Magenta,
                                          onDateChange: (selectedDate) {
                                            setState(() {
                                              pickedDate = selectedDate;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 30),
                                        Text(
                                            "Select Request Crew (*optional, max. 3 person)"),
                                        SizedBox(height: 10),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Container(
                                            child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  children: [
                                                    for (var i = 0; i < 10; i++)
                                                      GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            if (_selectCrew[
                                                                        i] ==
                                                                    false &&
                                                                _selectedCrew <
                                                                    3) {
                                                              _selectedCrew++;
                                                              _selectCrew[i] =
                                                                  true;
                                                            } else if (_selectCrew[
                                                                        i] ==
                                                                    true &&
                                                                _selectedCrew >
                                                                    0) {
                                                              _selectedCrew--;
                                                              _selectCrew[i] =
                                                                  false;
                                                            }
                                                          });
                                                        },
                                                        onLongPress: () {
                                                          showModalBottomSheet(
                                                            isDismissible:
                                                                false,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            barrierColor:
                                                                Colors.black12,
                                                            context: context,
                                                            builder: (contextA) =>
                                                                Stack(
                                                                    children: [
                                                                  Center(
                                                                      child:
                                                                          Container(
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Container(
                                                                          margin: EdgeInsets.only(
                                                                              left: 25,
                                                                              right: 25,
                                                                              bottom: 25),
                                                                          width:
                                                                              300,
                                                                          height:
                                                                              600,
                                                                          decoration: BoxDecoration(
                                                                              color: Colors.white,
                                                                              borderRadius: BorderRadius.circular(10),
                                                                              boxShadow: [
                                                                                BoxShadow(blurRadius: 12, color: Colors.black12)
                                                                              ]),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              children: [
                                                                                SizedBox(height: 35),
                                                                                CircleAvatar(
                                                                                  backgroundColor: Colors.grey,
                                                                                  radius: 80,
                                                                                ),
                                                                                SizedBox(height: 30),
                                                                                Text(
                                                                                  "Nama Lengkap",
                                                                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                                                                                ),
                                                                                Text(
                                                                                  "Jobdesk",
                                                                                ),
                                                                                SizedBox(height: 30),
                                                                                Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    FloatingActionButton(
                                                                                      onPressed: () {},
                                                                                      backgroundColor: Color(crewColor[1]),
                                                                                    ),
                                                                                    SizedBox(width: 10),
                                                                                    FloatingActionButton(
                                                                                      onPressed: () {},
                                                                                      backgroundColor: Color(crewColor[2]),
                                                                                    ),
                                                                                    SizedBox(width: 10),
                                                                                    FloatingActionButton(
                                                                                      onPressed: () {},
                                                                                      backgroundColor: Color(crewColor[3]),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(height: 30),
                                                                                Text("Schedule"),
                                                                                for (var i = 0; i < 5; i++)
                                                                                  ListTile(
                                                                                      title: Text("Event A"),
                                                                                      subtitle: Text("xx-xx-20xx"),
                                                                                      trailing: Icon(
                                                                                        Icons.calendar_month,
                                                                                        color: Colors.black12,
                                                                                      )),
                                                                                SizedBox(height: 30),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              30,
                                                                          right:
                                                                              0,
                                                                          child:
                                                                              FloatingActionButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              FontAwesome5.times,
                                                                              color: Colors.white,
                                                                              size: 20,
                                                                            ),
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )),
                                                                ]),
                                                          );
                                                        },
                                                        child: Container(
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      5),
                                                          child: Stack(
                                                            children: [
                                                              Container(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(2),
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Palette
                                                                            .Magenta,
                                                                        width:
                                                                            2),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50)),
                                                                child:
                                                                    CircleAvatar(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .grey,
                                                                  radius: 25,
                                                                ),
                                                              ),
                                                              (_selectCrew[i] ==
                                                                      false)
                                                                  ? Container()
                                                                  : Positioned(
                                                                      right: 0,
                                                                      top: 0,
                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        height:
                                                                            20,
                                                                        width:
                                                                            20,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                Palette.Magenta,
                                                                            borderRadius: BorderRadius.circular(50),
                                                                            boxShadow: [
                                                                              BoxShadow(blurRadius: 6, color: Colors.black12)
                                                                            ]),
                                                                        child:
                                                                            Icon(
                                                                          FontAwesome5
                                                                              .check,
                                                                          size:
                                                                              7,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    SizedBox(width: 15),
                                                  ],
                                                )),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 70)
                      ],
                    ),
                  )),
                  (screenwidth > 750)
                      ? Container(
                          padding: EdgeInsets.symmetric(vertical: 70),
                          width: 400,
                          color: Colors.white,
                          child: checkoutView,
                        )
                      : Container(),
                ],
              ),
            ),
            (screenwidth < 750)
                ? Positioned(
                    bottom: 20,
                    right: 20,
                    child: FloatingActionButton(
                      onPressed: () {
                        _key.currentState!.openDrawer();
                      },
                      child: Icon(
                        FontAwesome5.arrow_right,
                        size: 20,
                      ),
                    ))
                : Container()
          ],
        ));
  }
}
