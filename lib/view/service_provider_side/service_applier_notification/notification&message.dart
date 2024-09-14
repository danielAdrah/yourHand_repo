// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme.dart';
import 'message_view.dart';
import 'notification_view.dart';

class NotificationAndMessage extends StatefulWidget {
  const NotificationAndMessage({super.key});

  @override
  State<NotificationAndMessage> createState() => _NotificationAndMessageState();
}

class _NotificationAndMessageState extends State<NotificationAndMessage> {
  void _goToMessageTab() {
    Get.to(MessageView());
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: ThemeColor.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ThemeColor.primary,
          title: ZoomIn(
            delay: Duration(milliseconds: 150),
            child: Text('الإشعارات',
                style: TextStyle(color: ThemeColor.white, fontSize: 23)),
          ),
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              ZoomIn(
                delay: Duration(milliseconds: 200),
                child: TabBar(
                    labelColor: ThemeColor.primary,
                    unselectedLabelColor: ThemeColor.black.withOpacity(0.5),
                    indicatorColor: ThemeColor.primary,
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    dividerColor: ThemeColor.black.withOpacity(0.2),
                    tabs: [
                      InkWell(
                        onTap: _goToMessageTab,
                        child: Tab(
                          child: Text("الرسائل"),
                        ),
                      ),
                      Tab(
                        child: Text("الإشعارات"),
                      ),
                    ]),
              ),
              SizedBox(height: 20),
              Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        //this for messages
                        width: 500,
                        height: 500,
                        child: Text("dsd"),
                      ),
                      FadeInDown(
                          delay: Duration(milliseconds: 300),
                          child: NotificationView()),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
