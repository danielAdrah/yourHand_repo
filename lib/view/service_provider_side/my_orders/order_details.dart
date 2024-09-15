// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import '../../../theme.dart';
import '../../mother_side/mother_orders/order_info_tile.dart';

class OrderDetailView extends StatefulWidget {
  const OrderDetailView({super.key});

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: FadeInDown(
              delay: Duration(milliseconds: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  ZoomIn(
                    delay: Duration(milliseconds: 350),
                    child: Image(
                      image: AssetImage("assets/img/logo.png"),
                      width: 160,
                      height: 160,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    // height: media.width * 1,
                    padding: const EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 20),
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 15, right: 15, bottom: 15, left: 2.5),
                        decoration: BoxDecoration(
                          color: ThemeColor.primary.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            //here we will bring from the api the service that the mother ordered
                            //(the same service name that is displayed on the mother order tile)
                            OrderInfoTile(
                              title: " : صاحبة الطلب",
                              value: "داليا",
                            ),
                            OrderInfoTile(
                              title: " : الخدمةالمرادة",
                              value: "جليسة أطفال",
                            ),
                            SizedBox(height: 5),
                            // here will display the start date of the service
                            OrderInfoTile(
                              title: ": تاريخ البداية",
                              value: "2/2/2024",
                            ),
                            SizedBox(height: 5),
                            OrderInfoTile(
                              title: ": تاريخ الانتهاء",
                              value: "12/2/2024",
                            ),
                            SizedBox(height: 5),
                            OrderInfoTile(
                              title: ": ساعة البدء",
                              value: "10:30 AM",
                            ),
                            SizedBox(height: 5),
                            OrderInfoTile(
                              title: ": ساعة الانتهاء",
                              value: "5:30 PM",
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _orderDialog(
                                      context,
                                      () {
                                        //method for rejecting the order
                                      },
                                      "هل تريد رفض الطلب؟",
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 15),
                                    decoration: BoxDecoration(
                                        color:
                                            ThemeColor.primary.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: ThemeColor.primary
                                                .withOpacity(0.15))),
                                    child: Text(
                                      "رفض الطلب",
                                      style: TextStyle(
                                          color: ThemeColor.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                InkWell(
                                  onTap: () {
                                    _orderDialog(
                                      context,
                                      () {
                                        //method for accepting the order
                                      },
                                      "هل تريد قبول الطلب؟",
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 15),
                                    decoration: BoxDecoration(
                                        color:
                                            ThemeColor.primary.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: ThemeColor.primary
                                                .withOpacity(0.15))),
                                    child: Text(
                                      "قبول الطلب",
                                      style: TextStyle(
                                          color: ThemeColor.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _orderDialog(
      BuildContext context, void Function() onPressed, String title) async {
    await showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Center(child: Text(title)),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BasicDialogAction(
                  title: Text(
                    "نعم",
                    style: TextStyle(color: ThemeColor.primary),
                  ),
                  onPressed: onPressed),
              BasicDialogAction(
                title: Text(
                  "لا",
                  style: TextStyle(color: ThemeColor.primary),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
