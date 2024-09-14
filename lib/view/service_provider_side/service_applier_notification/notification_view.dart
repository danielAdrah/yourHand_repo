// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'notification_tile.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: NotificationTile(
              title: "طلبك قيد المعالجة",
            ),
          );
        },
      ),
    );
  }
}
