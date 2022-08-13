import 'package:final_project/utils/app_layout.dart';
import 'package:final_project/utils/styles.dart';
import 'package:final_project/widgets/Layoutbuilder.dart';
import 'package:final_project/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key,required this.ticket,this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final size = AppLayout.getSize(context);
    return SizedBox(
      width:MediaQuery.of(context).size.width *0.85 ,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?167:169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16) ),
        child: Column(

          children: [
            //blue part
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21))
                )
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket["from"]["code"],style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3.copyWith(color: Colors.black),),
                      Spacer(),
                      ThickContainer(isColor: isColor,),
                      Expanded(child:  Stack(
                        children:[ SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              print("the width is ${constraints.constrainWidth()}");
                              return Flex(
                                direction:Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                  width:3 ,height: 1,child: DecoratedBox(decoration: BoxDecoration(
                                    color:isColor==null? Colors.white:Colors.grey.shade300
                                ),),


                                )),);
                            },


                          ),

                        ),
                          Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded,color: isColor ==null? Colors.white:Color(0xFF8ACCF7),),)),]

                      )),

                      ThickContainer(isColor:isColor),
                      Spacer(),
                      Text(ticket["to"]["code"],style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),)


                    ],

                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                      child: Text(ticket["from"]["name"],style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                      Text(ticket["flying_time"],style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4.copyWith(color: Colors.black),),
                      SizedBox(width:AppLayout.getWidth(25),),
                      SizedBox(
                          child: Text(ticket["to"]["name"],textAlign:TextAlign.end ,style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                      )
                    ],
                  ),
                ],
              ),
            ),
            //red part
            Container(
              color:isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight:Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      )

                      
                    )),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:AppLayoutBuilder(sections: 15) ,
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        )


                    )),
                  )

                ],
              ),


            ),
            //bottom part of the red part
            Container( decoration: BoxDecoration(
                color:isColor==null?Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0)
                )
            ),
              padding: EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket["date"],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                          Gap(5),
                          Text("DATE",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket["departure_time"],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                          Gap(5),
                          Text("Departure time",style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket["number"].toString(),style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3.copyWith(color: Colors.black),),
                          Gap(5),
                          Text("Number",style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                        ],
                      )
                    ],


                  )
                ],
              ),


            ),


          ],

        ),

      ),
    );
  }
}
