// ignore_for_file: prefer_const_constructors
 

import 'package:animate_do/animate_do.dart'; 
import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:your_hand/common_widgets/settings_value.dart';
import 'package:your_hand/common_widgets/textField.dart';  
import '../../../theme.dart'; 
import 'package:flutter_dialogs/flutter_dialogs.dart';

class MotherSettings extends StatefulWidget {
  const MotherSettings({super.key});

  @override
  State<MotherSettings> createState() => _MotherSettingsState();
}

class _MotherSettingsState extends State<MotherSettings> {
  @override
  Widget build(BuildContext context) {
  double  width = MediaQuery.sizeOf(context).width ;
    return Scaffold(
        backgroundColor: ThemeColor.background,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: [
              // NavBar(title: "Settings"),
              const SizedBox(height: 35),
              FadeInDown(
                delay: Duration(milliseconds: 200),
                curve: Curves.decelerate,
                child: Column(
                  children: [
                    Stack(
                        children: [
                          CircleAvatar(
                              radius: 70, 
                              backgroundImage: AssetImage("assets/img/profilePic.png"),
                              // backgroundImage:_selectedImage == null ?  AssetImage("assets/img/profilePic.png") : FileImage(File(_selectedImage?.path))
                                      ),
                          Positioned(
                            right: 10,
                            bottom: 1,
                            child: InkWell(
                              onTap: () { 
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeColor.white,
                                radius: 20,
                                child: Icon(
                                  Icons.camera_alt,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    
                    const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20 ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 2,),
                                  child: Text(
                                    "معلومات حسابي ",
                                    style: TextStyle(
                                        color: ThemeColor.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  
                                
                                ),
                              ],
                            ),
                            Container(
                              // height: media.width * 1,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 20),
                              child: Column(children: [
                                Container(
                                    padding: const EdgeInsets.only(
                                        top: 15,
                                        right: 15,
                                        bottom: 15,
                                        left: 2.5),
                                    decoration: BoxDecoration(
                                      color: ThemeColor.primary.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Column(
                                        children: [
                                          SettingsValue(
                                            name: "الاسم",
                                            icon: Icons.person,
                                            child: Text(
                                              "داليا",
                                              style: TextStyle(
                                                  color: ThemeColor.white),
                                            ),
                                            onTap2: () { 
                                            },
                                          ),
                                          const SizedBox(height: 5),
                                          SettingsValue(
                                            name: "البريد الإلكتروني",
                                            icon: Icons.mail,
                                            child: Text(
                                              "nadia123@gmail.com",
                                              style: TextStyle(
                                                  color: ThemeColor.white),
                                            ),
                                            onTap2: () {},
                                          ),
                                          const SizedBox(height: 5),
                                          SettingsValue(
                                            name: "كلمة السر ",
                                            icon: Icons.password,
                                            child: Text(
                                              "nadia123",
                                              style: TextStyle(
                                                  color: ThemeColor.white),
                                            ),
                                            onTap2: () {},
                                          ),
                                          const SizedBox(height: 10),
                                          InkWell(
                                            onTap: () {
                                              _showEditProfileDialog(context);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 8,
                                                  bottom: 8,
                                                  right: 15,
                                                  left: 15),
                                              decoration: BoxDecoration(
                                                  color: ThemeColor.primary
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: ThemeColor.primary
                                                          .withOpacity(0.15))),
                                              child: Text(
                                                "تعديل ",
                                                style: TextStyle(
                                                    color: ThemeColor.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                          ),
                                        
                                        ],
                                      ),
                                    ),
                              ]),
                            ),
                            Container(
                              // height: media.width * 1,
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 20),
                              child: Column(children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: ThemeColor.primary.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Column(
                                    children: [SettingsValue(
                                        name: "تسجيل خروج ",
                                        icon: Icons.logout_outlined,
                                        child: SizedBox(),
                                        onTap2: () {
                                          
                                              showPlatformDialog(
  context: context,
  builder: (context) => BasicDialogAlert(
    title: Text("هل تريد الخروج من الحساب "),
    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
      BasicDialogAction(
        title: Text("نعم"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      BasicDialogAction(
        title: Text("لا"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
        ],
      )
    ],
  ),
);
                                        },
                                      ),
                                      SizedBox(height: 5),
                                      SettingsValue(
                                        name: "حذف الحساب",
                                        icon: Icons.delete,
                                        child: SizedBox(),
                                        onTap2: () {
                                          showPlatformDialog(
  context: context,
  builder: (context) => BasicDialogAlert(
    title: Text("هل تريد حذف الحساب "),
    actions: <Widget>[
      BasicDialogAction(
        title: Text("نعم"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      BasicDialogAction(
        title: Text("لا"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ],
  ),
);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                              ]),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
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
                CustomTextFieldWithoutIcon( 
                        onIconPressed: () {},
                        title: "الاسم", 
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                      SizedBox(height: 10),
                      CustomTextFieldWithoutIcon( 
                        onIconPressed: () {},
                        title: " البريد الإلكتروني",
                        controller: TextEditingController(),
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ), 
                      SizedBox(height: 10),
                      CustomTextFieldWithoutIcon( 
                        onIconPressed: () {},
                        title: "كلمة السر ",
                        controller: TextEditingController(),
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                      
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
                // Save the changes here
                // print('Saved: ${_nameController.text} | ${_emailController.text}');
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
}

