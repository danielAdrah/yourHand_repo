// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:your_hand/common_widgets/settings_value.dart';

import '../../../common_widgets/textField.dart';
import '../../../theme.dart';
import 'order_info_tile.dart';

class MotherOrderDetailView extends StatefulWidget {
  const MotherOrderDetailView({super.key});

  @override
  State<MotherOrderDetailView> createState() => _MotherOrderDetailViewState();
}

class _MotherOrderDetailViewState extends State<MotherOrderDetailView> {
  final TextEditingController newServiceName = TextEditingController();
  final TextEditingController newServiceStartDate = TextEditingController();
  final TextEditingController newServiceEndDate = TextEditingController();
  final TextEditingController newServiceStartHour = TextEditingController();
  final TextEditingController newServiceEndHour = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image(image: AssetImage("assets/img/logo.png"),width: 160,height:160 ,),
                SizedBox(height:40),
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
                                          //here we will bring from the api the service that the mother ordered
                                          //(the same service name that is displayed on the mother order tile)
                                          OrderInfoTile(title: " : الخدمة المحجوزة",value: "جليسة أطفال",),
                                          SizedBox(height: 5),
                                          // here will display the start date of the service
                                          OrderInfoTile(title: ": تاريخ البداية",value: "2/2/2024",),
                                          SizedBox(height: 5),
                                          OrderInfoTile(title: ": تاريخ الانتهاء",value: "12/2/2024",),
                                          SizedBox(height: 5),
                                          OrderInfoTile(title: ": ساعة البدء",value: "10:30 AM",),
                                          SizedBox(height: 5),
                                          OrderInfoTile(title: ": ساعة الانتهاء",value: "5:30 PM",),
                                          const SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  //this to cancel the order
                                                  _cancelOrder(
                                                    context,
                                                    () {
                                                      //here we will put the method that will cancel the
                                                    },
                                                  
                                                  );
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 8,horizontal: 15),
                                                  decoration: BoxDecoration(
                                                      color: ThemeColor.primary
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(15),
                                                      border: Border.all(
                                                          color: ThemeColor.primary
                                                              .withOpacity(0.15))),
                                                  child: Text(
                                                    "إلغاء الحجز",
                                                    style: TextStyle(
                                                        color: ThemeColor.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              InkWell(
                                                onTap: () {
                                                  //this to update the info of the order
                                                  _updateorder(context);
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 8,horizontal: 15),
                                                  decoration: BoxDecoration(
                                                      color: ThemeColor.primary
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(15),
                                                      border: Border.all(
                                                          color: ThemeColor.primary
                                                              .withOpacity(0.15))),
                                                  child: Text(
                                                    "تعديل الحجز",
                                                    style: TextStyle(
                                                        color: ThemeColor.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
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
              ],),
          ),
        ),
      ),
    );
  }
  _cancelOrder(BuildContext context,void Function() onPressed)async{
    await showPlatformDialog(
  context: context,
  builder: (context) => BasicDialogAlert(
    title: Center(child: Text("هل تريد إلغاء الطلب؟")),

    actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
      BasicDialogAction(
        title: Text("نعم",style: TextStyle(color:ThemeColor.primary),),
        onPressed: onPressed
      ),
      BasicDialogAction(
        title: Text("لا",style: TextStyle(color:ThemeColor.primary),),
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
  _updateorder(BuildContext context)async{
    await showDialog(
      context: context,
      barrierDismissible: false, 
      builder: (BuildContext context){
        return AlertDialog(
          content: IntrinsicWidth(
            stepWidth: 350,
            child: Form(
              child: Column(
                
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 10),
                  TextField(
                  textAlign: TextAlign.end,
                  controller: newServiceName,
                  decoration:InputDecoration(
                    hintText: "نوع الخدمة" ,
                    hintStyle: TextStyle(color:ThemeColor.primary),
                    enabledBorder: 
                    UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary,),
              
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary),
             
            ),         
                  ),),
                        SizedBox(height: 10),
                        TextField(
                  controller: newServiceStartDate,
                  textAlign: TextAlign.end,
                  decoration:InputDecoration(
                    hintText: "تاريخ البداية" ,
                    hintStyle: TextStyle(color:ThemeColor.primary),
                    enabledBorder: 
                    UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary,),
              
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary),
             
            ), 
                  ),),
                        SizedBox(height: 10),
                        TextField(
                  textAlign: TextAlign.end,
                  controller: newServiceEndDate,
                  decoration:InputDecoration(
                    hintText: "تاريخ الانتهاء" ,
                    hintStyle: TextStyle(color:ThemeColor.primary),
                    enabledBorder: 
                    UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary,),
              
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary),
             
            ),         
                  ),),
                        SizedBox(height: 10),
                        TextField(
                  textAlign: TextAlign.end,
                  controller: newServiceStartHour,
                  decoration:InputDecoration(
                    hintText: "ساعة البدء" ,
                    hintStyle: TextStyle(color:ThemeColor.primary),
                    enabledBorder: 
                    UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary,),
              
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary),
             
            ),         
                  ),),
                  SizedBox(height: 10),
                        TextField(
                  textAlign: TextAlign.end,
                  controller: newServiceEndHour,
                  decoration:InputDecoration(
                    hintText: "ساعة الانتهاء" ,
                    hintStyle: TextStyle(color:ThemeColor.primary),
                    enabledBorder: 
                    UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary,),
              
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ThemeColor.primary),
             
            ),        
                  ),),
                        
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
              child: Text('إلغاء',style:TextStyle(color:ThemeColor.primary)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('حفظ',style:TextStyle(color:ThemeColor.primary)),
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

      });

  }

}