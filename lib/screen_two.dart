import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:properties_app/main.dart';


class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       extendBodyBehindAppBar: true,
       body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.only(right: 10, left: 10),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                 children: [
                   Container(
                     height: 50,
                     width: 300,
                     margin: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Colors.brown[100],
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: ListTile(
                       leading: Icon(
                         Icons.search,
                         color: Colors.grey,
                       ),
                       title: Text(
                         "Search",
                         style: TextStyle(color: Colors.grey),
                       ),
                     ),
                   ),
                   Container(
                     height: 50,
                     width: 50,
                     margin: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Colors.green[400],
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Image.asset(
                       'assets/listfilter.webp',
                       height: 5,
                       width: 5,
                       fit: BoxFit.contain,
                     ),
                   )
                 ],
               ),
               SizedBox(
                 height: 12,
               ),
               Text(
                 "Matched Property",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   fontSize: 16.0,
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
               Container(
                 height: 120,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   shrinkWrap: true,
                   children: [
                     Container(
                       height: 100,
                       width: 200,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           image: DecorationImage(
                             image: AssetImage("assets/apartment.jpg"),
                             fit: BoxFit.cover,
                           )),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Container(
                       height: 100,
                       width: 200,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(26),
                           image: DecorationImage(
                             image: AssetImage(
                               "assets/bungalow.jpg",
                             ),
                             fit: BoxFit.cover,
                           )),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 12,
               ),
               Text(
                 "Company",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                   fontSize: 16.0,
                 ),
               ),
               SizedBox(
                 height: 10,
               ),
               Container(
                 height: 140,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   shrinkWrap: true,
                   children: [
                     Container(
                       height: 100,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.blueGrey[100],
                       ),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 5,
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.cyan[100],
                             radius: 30,
                             backgroundImage: AssetImage("assets/lackhms.jpg"),
                           ),
                           SizedBox(
                             height: 5,
                           ),
                           Text(
                             "Lark Homes",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                           Text(
                             "Broker",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           SizedBox(
                             height: 22,
                           ),
                           Divider(
                             thickness: 2,
                             color: Colors.blue,
                           )
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Container(
                       height: 100,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.blueGrey[100],
                       ),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 5,
                           ),
                           CircleAvatar(
                               backgroundColor: Colors.cyan[100],
                               radius: 30,
                               backgroundImage:
                               AssetImage("assets/axisgrp.png")),
                           SizedBox(
                             height: 5,
                           ),
                           Text(
                             "Axis Group",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                           Text(
                             "Broker",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           SizedBox(
                             height: 27,
                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Container(
                       height: 100,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.blueGrey[100],
                       ),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 5,
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.cyan[100],
                             radius: 30,
                             backgroundImage: AssetImage("assets/driggs.png"),
                           ),
                           SizedBox(
                             height: 5,
                           ),
                           Text(
                             "Driggs",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                           Text(
                             "Broker",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                           SizedBox(
                             height: 27,
                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Container(
                       height: 100,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.blueGrey[100],
                       ),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 5,
                           ),
                           CircleAvatar(
                             backgroundColor: Colors.cyan[100],
                             radius: 30,
                             backgroundImage: AssetImage("assets/flaticon.png"),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Text(
                             "Lynes Homes",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w600,
                             ),
                           ),
                           Text(
                             "Broker",
                             style: TextStyle(
                               color: Colors.black,
                               fontWeight: FontWeight.w400,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(
                 height: 10,
               ),
               Flexible(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 155,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Colors.black12,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Column(
                       children: [
                         SizedBox(height: 4,),
                         Row(
                           children: [
                             SizedBox(width: 5,),
                             CircleAvatar(
                               backgroundColor: Colors.cyan[100],
                               radius: 30,
                               backgroundImage: AssetImage("assets/profile4.jpg"),
                             ),
                             SizedBox(width: 10,),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text(
                                   "Nancy Elsie",
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.w600,
                                   ),
                                 ),
                                 Text(
                                   "Broker",
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.w400,
                                   ),
                                 ),
                               ],
                             ),

                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 8,right: 8),
                           child: Text("To access the most up-to-date information on competitive"
                               " salaries for Residential & Commercial Property Management,"
                               " as well as Maintenance roles",
                             maxLines: 4,
                             style: TextStyle(color: Colors.blueGrey[400],
                             ),
                           ),
                         ),
                         SizedBox(height: 4,),
                         Row(
                           children: [
                             Icon(Icons.star,color: Colors.orangeAccent,size: 18,),
                             Icon(Icons.star,color: Colors.orangeAccent,size: 18),
                             Icon(Icons.star,color: Colors.orangeAccent,size: 18),
                             Icon(Icons.star,color: Colors.orangeAccent,size: 18),
                             Icon(Icons.star,color: Colors.orangeAccent,size: 18),
                           ],
                         )
                       ],
                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
       bottomNavigationBar: ConvexAppBar(
         curveSize: 3,
         activeColor: Colors.white,
         items: [
           TabItem(
             icon: Icons.home,
           ),
           TabItem(
             icon: Icons.search,
           ),
           TabItem(
             icon: Icons.bookmark,
           ),
           TabItem(
             icon: Icons.message,
           ),
           TabItem(
             icon: Icons.settings,
           ),
         ],
         initialActiveIndex: 1, //optional, default as 0
         onTap: (int i) {
           if(i==0){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenOne()));
           }

         },
       )
   );

  }
}


