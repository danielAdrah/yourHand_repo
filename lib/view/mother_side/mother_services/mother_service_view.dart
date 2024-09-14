// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_hand/view/mother_side/mother_services/service_provider_list.dart';

import '../../../common_widgets/service_applier_navBar.dart';
import '../../../theme.dart';
import 'services_card.dart';

class MotherServices extends StatefulWidget {
  const MotherServices({super.key});

  @override
  State<MotherServices> createState() => _MotherServicesState();
}

class _MotherServicesState extends State<MotherServices> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height / 15),
              FadeInDown(
                delay: Duration(milliseconds: 150),
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: ServiceApplierNavBar(title: "داليا"),
                ),
              ),
              SizedBox(height: height / 10),
              FadeInDown(
                delay: Duration(milliseconds: 250),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 130,
                  ),
                  child: Text(
                    "ما الخدمة التي تبحث عنها؟",
                    style: TextStyle(
                        color: ThemeColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: height / 18),
              FadeInDown(
                delay: Duration(milliseconds: 300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ServicesCard(
                            onTap: () {
                              Get.to(ServiceProviderList(
                                appBarTitle: "طبخ",
                              ));
                            },
                            title: "طبخ"),
                        SizedBox(height: 20),
                        ServicesCard(
                            onTap: () {
                              Get.to(ServiceProviderList(
                                appBarTitle: "منسقة عزائم و حفلات",
                              ));
                            },
                            title: "منسقة عزائم و حفلات"),
                      ],
                    ),
                    Column(
                      children: [
                        ServicesCard(
                            onTap: () {
                              Get.to(ServiceProviderList(
                                appBarTitle: "جليسة أطفال",
                              ));
                            },
                            title: "جليسة أطفال"),
                        SizedBox(height: 20),
                        ServicesCard(
                            onTap: () {
                              Get.to(ServiceProviderList(
                                appBarTitle: 'مدبرة منزل',
                              ));
                            },
                            title: "مدبرة منزل"),
                      ],
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
