import 'package:final_project/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context)
  { print("Hotel price is ${hotel["price"]} ");
    final size = MediaQuery.of(context).size.width;
    return Container(
      width: size*0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("Images/${hotel["image"]}"))
              
            ),
          ),
          Gap(10),
          Text("${hotel["place"]}",style: Styles.headLineStyle2.copyWith(color: Styles.specialgrey),),
          Gap(5),
          Text("${hotel["destination"]}",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          Gap(8),
          Text("\$${hotel["price"]}/night",style: Styles.headLineStyle2.copyWith(color: Styles.specialgrey),),
        ],
      ),
    );
  }
}
