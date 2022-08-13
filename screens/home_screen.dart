import 'package:final_project/screens/HotelScreen.dart';
import 'package:final_project/screens/ticket_view.dart';
import 'package:final_project/utils/app_info_list.dart';
import 'package:final_project/widgets/text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


import '../utils/styles.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Good Morning",style: Styles.headLineStyle3,),
                       Gap(5),
                       Text("Book Tickets",style: Styles.headLineStyle1,),
                     ],
                   ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("Images/img_1.png")
                        )
                      ),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                    Text("Search",style: Styles.headLineStyle4,)
                  ],


                  ),
                ),
                Gap(40),
                AppDoubleTextWidget(bigText: 'Upcoming flights', smallText: 'view all',)

              ],
              
            ),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),

          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: 'Hotels', smallText: 'view all',)
          ),
          Gap(15),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
          children:
           hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()



               ),
               ),
               ],



      ),




    );
  }
}
