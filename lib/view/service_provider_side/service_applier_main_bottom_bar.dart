// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:your_hand/common_widgets/textField.dart';
import 'package:your_hand/controller/home_servcie_controller.dart';
import '../../theme.dart';
import 'my_orders/orders_view.dart';
import 'service_applier_homePage/add_service_screen.dart';
import 'service_applier_homePage/profile_service.dart';
import 'service_applier_homePage/service_applier_home.dart';
import 'service_applier_notification/notification&message.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  final controller = Get.put(HomeServiceController());
  List<String> services = [
    "جليسة أطفال",
    "طبخ",
    "مدبرة منزل",
    "منسقة عزائم و حفلات",
  ];
  List<Widget> screens = <Widget>[
    SettingsView(),
    NotificationAndMessage(),
    // AddServiceScreen() ,//this foe the add button in the middle 
    Container(
      width: 500,
      height: 500,
      child: Text("d"), 
    ),
    ServiceApplierPage(),
    OrdersView(),
  ];
  int selectedTab = 0;
  void goToTab(index) {
    setState(() {
      selectedTab = index;
    });
  }
  void _showEditProfileDialog(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text(''),
          content: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "اختر نوع الخدمة التي تريد أضافتها ",
                      style: TextStyle(
                          color: ThemeColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Padding(padding: EdgeInsets.symmetric(horizontal: 20) ,
                child: Column(
                  children: [
                    Container(
                  decoration: BoxDecoration(
                      color: ThemeColor.white,
                      borderRadius: BorderRadius.circular(15)),
                  width: 240,
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(25),
                    alignment: Alignment.centerRight,
                    hint: Obx(() => controller.serviceName.value.isEmpty
                        ? Text(
                            "اختر خدمة",
                            style: TextStyle(color: ThemeColor.black),
                          )
                        : Text(controller.serviceName.value,
                            style: TextStyle(color: ThemeColor.black))),
                    items: services.map((String service) {
                      return DropdownMenuItem<String>(
                        value: service,
                        child: Row(
                          children: [
                            Text(
                              service,
                              style: TextStyle(color: ThemeColor.black),
                            ),
                          ],
                        ), // Display the category name
                      );
                    }).toList(),
                    iconEnabledColor: Colors.pink,
                    iconSize: 50,
                    isExpanded: true,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    underline: Text(
                      "",
                      style: TextStyle(color: ThemeColor.white),
                    ),
                    onChanged: (String? val) {
                      if (val != null) {
                        controller.serviceName.value = val;
                        // controller.selectedCategoryId.value = val;
                        // controller.fetchSubcategory();
                      }
                    }, //o Implement your logic here when a selection changes
                  ),
                ),
                SizedBox(height: 25),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [  
                    Container(
                      height: 18,
                          width: MediaQuery.of(context).size.width * 0.1, 
                          child: TextField()),
                    SizedBox(width: 20),
                    Text(
                      ":السعر لكل ساعة",
                      style: TextStyle(
                          color: ThemeColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Container(
                      height: 18,
                          width: MediaQuery.of(context).size.width * 0.1, 
                          child: TextField()),
                    SizedBox(width: 20),
                    Text(
                      ":السعر لكل يوم",
                      style: TextStyle(
                          color: ThemeColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              
                  ],
                ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
              child: Text('ألغاء'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('حفظ'),
              onPressed: () {
                 Navigator.of(context).pop();
              },
            ),
              ],
            )
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.background,
        bottomNavigationBar: SizedBox(
          height: 95,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            iconSize: 40,
            type: BottomNavigationBarType.fixed,

            unselectedItemColor: ThemeColor.black.withOpacity(0.4),
            // unselectedIconTheme:
            //     IconThemeData(color: ThemeColor.black.withOpacity(0.4)),
            currentIndex: selectedTab,
            onTap: (index) {
              goToTab(index);
            },
            selectedItemColor: ThemeColor.primary,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'حسابي',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'الإشعارات',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap:(){ 
                    _showEditProfileDialog(context);
                  } ,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ThemeColor.background,
                    child: Icon(
                      Icons.add,
                      color: Colors.pink,
                      size: 30,
                    ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'خدماتي',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'طلباتي',
              ),
            ],
          ),
        ),
        body: screens[selectedTab]);
  
  }
  
}
