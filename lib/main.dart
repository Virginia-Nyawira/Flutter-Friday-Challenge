import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:properties_app/screen_two.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
   void  _showSettingsPanel() {
      showModalBottomSheet(context: context,
          builder: (context){
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
              ),
             // padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
              child: FilterSettings(),
            );
          }
      );
    }
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [

            Text(
              "Hello!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "James Bond",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.cyan[100],
                  radius: 27,
                  backgroundImage: AssetImage("assets/profile3.jpg"),
                ),
              ],
            ),
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
                  height: 48,
                  width: 48,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(icon: Icon(Icons.filter_list,
                      size: 35,
                      color: Colors.black,),
                        onPressed: (){
                          _showSettingsPanel();
                        }),
                  )
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/land.png")
                    )
                  ),
                ),
                Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/flaticon.png")
                    )
                  ),
                ),
                Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/realest.png")
                    )
                  ),
                ),
                Container(
                  height: 55,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/aparticon.png")
                    )
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Properties",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
              child: Container(
                height: 250,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      //width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/apartmentin.jpg",),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "  Pearl Valley Apartment"
                          "   ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 4,),
                        Icon(Icons.location_on,size: 14,),
                        Text(
                          "Precious Stone City",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                          "   Ksh 15000",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
              child: Container(
                height: 250,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      //width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/apartmentin1.jpg",),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "  GemStone Valley Apartment"
                          "   ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 4,),
                        Icon(Icons.location_on,size: 14,),
                        Text(
                          "Lake View City",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "   Ksh 21000",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),

      extendBodyBehindAppBar: true,
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
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          if(i==1){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTwo()));
          }

        },
      ),
    );
  }
}

class FilterSettings extends StatefulWidget {
  @override
  _FilterSettingsState createState() => _FilterSettingsState();
}

class _FilterSettingsState extends State<FilterSettings> {

  double _lowerValue = 20.0;
  double _upperValue = 80.0;
  double _lowerPrice = 200.0;
  double _upperPrice = 800.0;
  double _lowerValueFormatter = 20.0;
  double _upperValueFormatter = 20.0;

  @override
  Widget build(BuildContext context) {

    return Container(
     child: Column(
       children: [
     Text(
       "Filter",
       style: TextStyle(
         color: Colors.black87,
         fontSize: 15,
         fontWeight: FontWeight.w600,
       ),
     ),
     Container(
       height:50,
       width: 360,
       margin: EdgeInsets.all(5),
       decoration: BoxDecoration(
         color: Colors.grey[300],
         borderRadius: BorderRadius.circular(20),
       ),
       child: ListTile(
         leading: Icon(
           Icons.location_on,
           color: Colors.blueGrey,
         ),
         title: Text(
           "Search",
           style: TextStyle(color: Colors.blueGrey),
         ),
       ),
     ),
         Text(
           "Property Types",
           style: TextStyle(
             color: Colors.black87,
             fontSize: 15,
             fontWeight: FontWeight.w600,
           ),
         ),
         Container(
           height:40,
           child: ListView(
             scrollDirection: Axis.horizontal,
             shrinkWrap: true,
             children: [
               Container(
                 height: 20,
                 width: 90,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                     borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: Text("Apartment",style: TextStyle(
                     fontWeight: FontWeight.bold,
                       letterSpacing: 1
                   ),),
                 ),
               ),
               SizedBox(
                 width: 5,
               ),
               Container(
                 height: 20,
                 width: 80,
                 decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: Text("Land",style: TextStyle(
                     fontWeight: FontWeight.bold,
                       letterSpacing: 1
                   ),),
                 ),
               ),
               SizedBox(
                 width: 5,
               ),
               Container(
                 height: 20,
                 width: 95,
                 decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: Text("Commercial",style: TextStyle(
                     fontWeight: FontWeight.bold,
                     letterSpacing: 1
                   ),),
                 ),
               ),
               SizedBox(
                 width: 5,
               ),
               Container(
                 height: 20,
                 width: 95,
                 decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: Text("Holiday",style: TextStyle(
                     fontWeight: FontWeight.bold,
                       letterSpacing: 1
                   ),),
                 ),
               ),
               SizedBox(
                 width: 5,
               ),
               Container(
                 height: 20,
                 width: 95,
                 decoration: BoxDecoration(
                   color: Colors.black12,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: Text("Bungalow",style: TextStyle(
                     fontWeight: FontWeight.bold,
                       letterSpacing: 1
                   ),),
                 ),
               ),

             ],
           ),

         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               "     Property Size",
               style: TextStyle(
                 color: Colors.black87,
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
               ),
             ),
             Text(
               "Up to 1500 sqft      ",
               style: TextStyle(
                 color: Colors.blue,
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ],
         ),

      frs.RangeSlider(
        min: 0.0,
        max: 100.0,
        lowerValue: _lowerValue,
        upperValue: _upperValue,
        divisions: 5,
        showValueIndicator: true,
        valueIndicatorMaxDecimals: 1,
        onChanged: (double newLowerValue, double newUpperValue) {
          setState(() {
            _lowerValue = newLowerValue;
            _upperValue = newUpperValue;
          });
        },
        onChangeStart:
            (double startLowerValue, double startUpperValue) {
          print(
              'Started with values: $startLowerValue and $startUpperValue');
        },
        onChangeEnd: (double newLowerValue, double newUpperValue) {
          print(
              'Ended with values: $newLowerValue and $newUpperValue');
        },
      ),
         Text(
           "Property Price",
           style: TextStyle(
             color: Colors.black,
             fontSize: 17,
             fontWeight: FontWeight.bold,
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text(
               "     Low",
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
               ),
             ),
             Text(
               "High     ",
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ],
         ),

      frs.RangeSlider(
        min: 100.0,
        max: 1000.0,
        lowerValue: _lowerPrice,
        upperValue: _upperPrice,
        divisions: 5,
        showValueIndicator: true,
        valueIndicatorMaxDecimals: 1,
        onChanged: (double newLowerValue, double newUpperValue) {
          setState(() {
            _lowerPrice = newLowerValue;
            _upperPrice = newUpperValue;
          });
        },
        onChangeStart:
            (double startLowerValue, double startUpperValue) {
          print(
              'Started with values: $startLowerValue and $startUpperValue');
        },
        onChangeEnd: (double newLowerValue, double newUpperValue) {
          print(
              'Ended with values: $newLowerValue and $newUpperValue');
        },
      ),
     SizedBox(height: 5,),

     Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         MaterialButton(onPressed: (){},
           splashColor: Colors.pink,
           elevation: 10,
           color: Colors.white,
         child: Text("Reset"),
         ),
         MaterialButton(onPressed: (){},
           elevation: 10,
           color: Colors.green,
           child: Text("Check Availability"),
         )
       ],
     )
       ],
     ),

    );
  }
}

