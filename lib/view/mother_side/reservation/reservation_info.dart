// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common_widgets/date_textField.dart';
import '../../../common_widgets/primary_button.dart';
import '../../../common_widgets/service_applier_navBar.dart';
import '../../../theme.dart';

class ReservationInfo extends StatefulWidget {
  const ReservationInfo({super.key});

  @override
  State<ReservationInfo> createState() => _ReservationInfoState();
}

class _ReservationInfoState extends State<ReservationInfo> {
  TextEditingController startDateCont = TextEditingController();
  TextEditingController endDateCont = TextEditingController();
  TextEditingController startHour = TextEditingController();
  TextEditingController endHour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: FadeInDown(
            delay: Duration(milliseconds: 300),
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.03, left: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  ServiceApplierNavBar(
                    title: "جليسة أطفال",
                  ),
                  SizedBox(height: height * 0.08),
                  Text(
                    "اعمل جليسة أطفال\nلدي خبرة ثلاث سنوات في التعامل مع الأطفال",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: ThemeColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: height,
                    decoration: BoxDecoration(
                      color: ThemeColor.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: 60,
                            height: 4,
                            decoration: BoxDecoration(
                                color: ThemeColor.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "اختر تفاصيل الحجز",
                                style: TextStyle(
                                    color: ThemeColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  DateTextField(
                                    controller: endDateCont,
                                    onTap: showEndDate,
                                    width: 100,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "إلى",
                                    style: TextStyle(
                                        color: ThemeColor.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 5),
                                  DateTextField(
                                    onTap: showDate,
                                    controller: startDateCont,
                                    width: 100,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "حجز أيام  من",
                                    style: TextStyle(
                                        color: ThemeColor.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 35,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: ThemeColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  DateTextField(
                                    controller: endHour,
                                    onTap: showEndTimePicke,
                                    width: 85,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "إلى",
                                    style: TextStyle(
                                        color: ThemeColor.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 5),
                                  DateTextField(
                                    controller: startHour,
                                    onTap: showTimePicke,
                                    width: 85,
                                  ),
                                  Text(
                                    "حجز ساعات  من",
                                    style: TextStyle(
                                        color: ThemeColor.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 35,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: ThemeColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Text(
                                "اختر طريقة الدفع",
                                style: TextStyle(
                                    color: ThemeColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "كاش",
                                    style: TextStyle(
                                        color: ThemeColor.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 35,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: ThemeColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "بطاقة ائتمان",
                                    style: TextStyle(
                                        color: ThemeColor.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(width: 20),
                                  Container(
                                    width: 35,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: ThemeColor.primary,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                        Center(
                          child: PrimaryButton(
                            height: 50,
                            width: 170,
                            onTap: () {
                              Get.to(ReservationInfo());
                            },
                            text: "حجز",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
      barrierColor: Colors.grey,
    );
    if (picked != null) {
      startDateCont.text = picked.toString().substring(0, 10);
    }
  }

  //================
  Future<void> showEndDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
      barrierColor: Colors.grey,
    );
    if (picked != null) {
      endDateCont.text = picked.toString().substring(0, 10);
    }
  }

  //============
  Future<void> showTimePicke() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      startHour.text = pickedTime.format(context).toString();
    }
  }

  //=====
  Future<void> showEndTimePicke() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      endHour.text = pickedTime.format(context).toString();
    }
  }
}
