// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import '../../../theme.dart';

class ServicesCard extends StatelessWidget {
  ServicesCard({super.key, required this.title, required this.onTap});
  final String title;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 17, horizontal: 12),
            width: 150,
            height: 130,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: ThemeColor.black, blurRadius: 5),
              ],
              color: ThemeColor.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: ThemeColor.primary.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(
                    "assets/img/logo.png",
                  ),
                  height: 70,
                  width: 70,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
                color: ThemeColor.black,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
