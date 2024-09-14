// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:your_hand/theme.dart';

import '../../../common_widgets/primary_button.dart';
import '../../../common_widgets/secondary_button.dart';
import '../../../common_widgets/service_applier_navBar.dart';

class ServiceApplierPage extends StatefulWidget {
  const ServiceApplierPage({super.key});

  @override
  State<ServiceApplierPage> createState() => _ServiceApplierPageState();
}

class _ServiceApplierPageState extends State<ServiceApplierPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeInDown(
            delay: Duration(milliseconds: 300),
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.05, left: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  ServiceApplierNavBar(
                    title: "جليسة أطفال",
                  ),
                  SizedBox(height: 30),
                  Text(
                    "اعمل جليسة أطفال\nلدي خبرة ثلاث سنوات في التعامل مع الأطفال",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: ThemeColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    width: double.infinity,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    height: height,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 40),
                                            Text(
                                              "طلبات قيد التنفيذ",
                                              style: TextStyle(
                                                color: ThemeColor.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      //the name of the customer
                                                      "داليا",
                                                      style: TextStyle(
                                                          color: ThemeColor
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      // the date of the reservation
                                                      "الحجز يوم الأربعار الساعة العاشرة",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: ThemeColor
                                                              .black
                                                              .withOpacity(
                                                                  0.5)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 8),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      ThemeColor.background,
                                                  radius: 30,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SecondaryButton(
                                                  height: 50,
                                                  width: 90,
                                                  onTap: () {},
                                                  text: "التفاصيل",
                                                ),
                                                SizedBox(width: 8),
                                                SecondaryButton(
                                                  height: 50,
                                                  width: 90,
                                                  onTap: () {},
                                                  text: "رفض",
                                                ),
                                                SizedBox(width: 8),
                                                PrimaryButton(
                                                  onTap: () {},
                                                  text: "قبول",
                                                  height: 50,
                                                  width: 90,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              color: ThemeColor.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 50),
                                  //here the number of undergoinig requets
                                  Text(
                                    "01",
                                    style: TextStyle(
                                      color: ThemeColor.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    "طلبات قيد التنغيذ",
                                    style: TextStyle(
                                      color: ThemeColor.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    width: double.infinity,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    height: height,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 40),
                                            Text(
                                              "طلبات منفذة",
                                              style: TextStyle(
                                                color: ThemeColor.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      //the name of the customer
                                                      "داليا",
                                                      style: TextStyle(
                                                          color: ThemeColor
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      // the date of the reservation
                                                      "الحجز يوم الأربعار الساعة العاشرة",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: ThemeColor
                                                              .black
                                                              .withOpacity(
                                                                  0.5)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 8),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      ThemeColor.background,
                                                  radius: 30,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SecondaryButton(
                                                  height: 50,
                                                  width: 90,
                                                  onTap: () {},
                                                  text: "التفاصيل",
                                                ),
                                                SizedBox(width: 8),
                                                SecondaryButton(
                                                  height: 50,
                                                  width: 90,
                                                  onTap: () {},
                                                  text: "رفض",
                                                ),
                                                SizedBox(width: 8),
                                                PrimaryButton(
                                                  onTap: () {},
                                                  text: "قبول",
                                                  height: 50,
                                                  width: 90,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              color: ThemeColor.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 50),
                                  //here the number of undergoinig requets
                                  Text(
                                    "01",
                                    style: TextStyle(
                                      color: ThemeColor.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    "طلبات منغذة",
                                    style: TextStyle(
                                      color: ThemeColor.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    width: double.infinity,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    height: height,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 40),
                                            Text(
                                              "طلبات واردة",
                                              style: TextStyle(
                                                color: ThemeColor.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      //the name of the customer
                                                      "داليا",
                                                      style: TextStyle(
                                                          color: ThemeColor
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      // the date of the reservation
                                                      "الحجز يوم الأربعار الساعة العاشرة",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: ThemeColor
                                                              .black
                                                              .withOpacity(
                                                                  0.5)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 8),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      ThemeColor.background,
                                                  radius: 30,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 40),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SecondaryButton(
                                                  height: 50,
                                                  width: 90,
                                                  onTap: () {},
                                                  text: "التفاصيل",
                                                ),
                                                SizedBox(width: 8),
                                                SecondaryButton(
                                                  height: 50,
                                                  width: 90,
                                                  onTap: () {},
                                                  text: "رفض",
                                                ),
                                                SizedBox(width: 8),
                                                PrimaryButton(
                                                  onTap: () {},
                                                  text: "قبول",
                                                  height: 50,
                                                  width: 90,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                              color: ThemeColor.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 50),
                                  //here the number of undergoinig requets
                                  Text(
                                    "02",
                                    style: TextStyle(
                                      color: ThemeColor.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Text(
                                    "طلبات واردة",
                                    style: TextStyle(
                                      color: ThemeColor.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "تعديل",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 157, 204),
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        "ريال 100",
                        style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 20),
                      Text(
                        ":السعر لكل ساعة",
                        style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "تعديل",
                          style: TextStyle(
                              color: Color.fromARGB(255, 99, 157, 204),
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        "ريال 300   ",
                        style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 20),
                      Text(
                        ":السعر لكل يوم",
                        style: TextStyle(
                            color: ThemeColor.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
