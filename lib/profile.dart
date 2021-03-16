import 'package:flutter/material.dart';

import 'chartdata/BarChartSample1.dart';



class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Image.asset('images/like.png',
                    color:  Color(0xff2D31AC),
                  ),

                  Image.asset('images/setting.png',),
                ],
              ),
            ),

            Column(
              children: [
                Image.asset('images/Avatar.png',),
                SizedBox(height: 10,),
                Text('Natali Lebediva',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25
                ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xffF4F5F6)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/practices.png',),
                              SizedBox(width: 10,),
                              Text('Practices',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                              ),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('sessions',
                              style: TextStyle(
                                color: Colors.grey
                              ),),
                              SizedBox(width: 10,),
                              Text('13',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),),
                              SizedBox(width: 20,),
                              Text('Time',
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                              SizedBox(width: 10,),
                              Text('4:23:04',
                                style: TextStyle(
                                    color: Colors.black,
                                  fontSize: 22,
                                ),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffF4F5F6)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/medi.png',),
                              SizedBox(width: 10,),
                              Text('Meditations',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18
                                ),)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text('sessions',
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                              SizedBox(width: 10,),
                              Text('6',
                                style: TextStyle(
                                    color: Colors.black,
                                  fontSize: 22
                                ),),
                              SizedBox(width: 20,),
                              Text('Time',
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                              SizedBox(width: 10,),
                              Text('0:55:04',
                                style: TextStyle(
                                    color: Colors.black,
                                  fontSize: 22
                                ),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xffF4F5F6)
                    ),
                    child:BarChartSample1(),
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
