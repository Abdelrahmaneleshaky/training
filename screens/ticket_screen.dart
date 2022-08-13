import 'package:final_project/screens/ticket_view.dart';
import 'package:final_project/utils/app_info_list.dart';
import 'package:final_project/utils/app_layout.dart';
import 'package:final_project/widgets/Layoutbuilder.dart';
import 'package:final_project/widgets/tickets_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/styles.dart';
import '../widgets/column_Layout.dart';
import 'package:barcode_widget/barcode_widget.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
          children: [
            Gap(40),
            Text("Tickets",style: Styles.headLineStyle1,),
            Gap(20),
            AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],isColor: true,),
              
            ),
            SizedBox(height: 1,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20 ),
              margin: EdgeInsets.symmetric(horizontal: 15),

              color: Colors.white,
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    AppColumnLayout(firstText: "Flutter DB",secondText: "Passnger",alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(firstText: "5221 3664869",secondText: "passport" ,alignment: CrossAxisAlignment.end,),
                  ],
                ),
                Gap(20),
                AppLayoutBuilder(sections: 15,isColor:true,width: 5,),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    AppColumnLayout(firstText: "0055 444 77147",secondText: "Number of E-ticket",alignment: CrossAxisAlignment.start,),
                    AppColumnLayout(firstText: "B2SG2B",secondText: "Booking code" ,alignment: CrossAxisAlignment.end,),
                  ],
                ),
                Gap(20),
                AppLayoutBuilder(sections: 15,isColor:true,width: 5,),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('Images/visa.png',scale: 11,),
                            Text(" *** 2462",style: Styles.headLineStyle3.copyWith(color: Colors.black),)
                          ],
                          
                        ),
                        Gap(5),
                        Text("Payment method",style: Styles.headLineStyle4,)
                      ],
                    ),
                    AppColumnLayout(firstText: "\$249.99",secondText: "Price" ,alignment: CrossAxisAlignment.end,),
                  ],
                ),
                SizedBox(height: 1,),
                Gap(10),

              ],

              ),


            ),
            //barcode
            Container(
           decoration: BoxDecoration(
               color: Colors.white,
             borderRadius: BorderRadius.only(bottomRight: Radius.circular(21),bottomLeft: Radius.circular(21))
           ),
           margin: EdgeInsets.only(left: 15,right: 15),
           padding: EdgeInsets.only(top: 20,bottom: 20),
           child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(AppLayout.getHeight(15)),
                child: BarcodeWidget(barcode: Barcode.code128(),
                  data: "https://github.com/martionovo",
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,

                ),
              ),
            )),
            Gap(20),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],),

            ),
          ],
        ),
        

        ]
      ),



    );
  }
}
