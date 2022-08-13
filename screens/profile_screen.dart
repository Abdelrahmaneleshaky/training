import 'package:final_project/utils/app_layout.dart';
import 'package:final_project/utils/styles.dart';
import 'package:final_project/widgets/Layoutbuilder.dart';
import 'package:final_project/widgets/column_Layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
            Container(
              height: 86,
              width: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                image: DecorationImage(
                  image: AssetImage(
                  "Images/img_1.png"
                )
                )
              ),
            ),
            Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Book Tickets",style: Styles.headLineStyle1,),
                Gap(2),
                Text("New-York",style:TextStyle(
                  fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade500
                ),),
                Gap(8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                    color: Color(0xFFFEF4F3)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3),vertical: AppLayout.getHeight(3)),
                  child: Row(
                    children: [
                      Container(
                        padding:EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            color: Color(0xFF526799)
                        ),
                        child: Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 15,),
                      ),
                      Gap(5),
                      Text("Premium status",style: TextStyle(color: Color(0xFF526799),fontWeight: FontWeight.w600),),
                      Gap(5),
                    ],
                  ),
                ),
                Gap(10),
                Column(


                  children: [
                    InkWell(
                      onTap: (){
                        print("you are tapped");
                      },
                      child: Text("Edit",
                      style: Styles.textStyle.copyWith(color: Styles.primaryColor,fontWeight:FontWeight.w500 ),),
                    )

                  ],
                )
              ],
            )
          ],),
          Gap(8),
          Divider(color: Colors.grey.shade300,),
          Gap(8),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child:
                  Container(
                padding:EdgeInsets.all(AppLayout.getHeight(30)) ,
                decoration: BoxDecoration(
                   color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18,color: Color(0xFF264CD2))
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color:Styles.primaryColor,size: 27,
                      ),
                      maxRadius: 25,
                      backgroundColor: Colors.white,

                    ),
                    Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'ve got a new award",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.9),fontSize: 16),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(25),
          Text("Accumulated miles",style: Styles.headLineStyle2,),
          Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal:AppLayout.getWidth(15) ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(18)),
              color: Styles.bgColor,


            ),
            child: Column(
              children: [
                Gap(15),
                Text("192802",style:TextStyle(
                  fontSize: 45,color: Styles.textColor,fontWeight: FontWeight.w600
                ),),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("11 june 2022",style: Styles.headLineStyle4.copyWith(fontSize: 16),)
                  ],
                ),
                Divider(color: Colors.grey.shade300,),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment:CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment:CrossAxisAlignment.end)
                  ],
                ),
                Gap(12),
                AppLayoutBuilder(sections: 12,isColor: true,),
                Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment:CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "MacDonal's", secondText: "Received from", alignment:CrossAxisAlignment.end)
                  ],
                ),
                Gap(12),
                AppLayoutBuilder(sections: 12,isColor: true,),
                Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment:CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Exuma", secondText: "Received from", alignment:CrossAxisAlignment.end)
                  ],
                )

              ],
              
            ),
          ),
          Gap(25),
          InkWell(
            onTap: (){
              print("you are Tapped");
            },
            child: Center(
              child: Text("How to get more miles",
                style:Styles.textStyle.copyWith(color:Styles.primaryColor,fontWeight: FontWeight.w500) ,),
            ),
          )

          
        ],




      ),
    );
  }
}
