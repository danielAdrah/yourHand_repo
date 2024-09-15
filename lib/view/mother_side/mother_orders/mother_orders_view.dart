// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_hand/view/mother_side/mother_orders/mother_order_details_view.dart';

import '../../../theme.dart';
import '../../service_provider_side/my_orders/order_tile.dart';
import 'mother_order_tile.dart';

class MotherOrdersView extends StatefulWidget {
  const MotherOrdersView({super.key});

  @override
  State<MotherOrdersView> createState() => _MotherOrdersViewState();
}

class _MotherOrdersViewState extends State<MotherOrdersView> {
  String name = "داليا";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ThemeColor.primary,
        title: ZoomIn(
          delay: Duration(milliseconds: 150),
          child: Text('طلباتي',
              style: TextStyle(color: ThemeColor.white, fontSize: 23)),
        ),
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              //in this listview.builder we will display a list of orders that the user made
              //and the ability to cancel or edit them
              SizedBox(
                height: height,
                child: ListView.builder(
                    itemCount: 25,
                    itemBuilder: (context, index) {
                      return FadeInDown(
                        delay: Duration(milliseconds: 200),
                        child: MotherOrderTile(
                          onTap: () {
                            // this will take you to the details of the order
                            Get.to(MotherOrderDetailView());
                          },
                          service: "جليسة أطفال",
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
