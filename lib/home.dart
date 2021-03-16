import 'package:flutter/material.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_see_all.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final popular_name = ['Anxiety', 'Anxiety'];
    final popular_description = [
      'Turn down thestress \nvolume',
      'Turn down thestress \nvolume'
    ];
    final popular_step = ['7', '5'];
    final popular_time = ['5-11', '5-11'];
    final popular_image=['images/tree.svg','images/tree.svg'];
    final popular_background=[Color(0xff2D73D5),Color(0xff44AFE3)];



    final new_name=['Happiness','Spiritual'];
    final new_description=['Daily Calm','Daily Calm'];
    final new_time=['3-11','6-11'];
    final new_background=[Color(0xffFF9870),Color(0xff6565C7)];


    final width = MediaQuery
        .of(context)
        .size
        .width;


    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 320,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(0)),
                  color: Color(0xff333399),
                ),

                child: Stack(
                  children: [
                    Positioned(
                        top:170,
                        child: Image.asset('images/left_nature.png')),

                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 30),
                          child: SvgPicture.asset(
                            'images/nature_right.svg',
                            height: 190.0,
                            width: 190.0,
                            allowDrawingOutsideViewBox: true,
                          ),
                        )
                    ),


                    Positioned(
                      top: 130,
                      left: 170,
                      child: SvgPicture.asset(
                        'images/girl.svg',
                        height: 190.0,
                        width: 190.0,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('DAY 7',
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 10
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('Love and  Accept \nYourself',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            ),)
                        ],
                      ),
                    )

                  ],
                ),

              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeSeeAll()));

                  },
                  child: Text('See All',
                    style: TextStyle(
                        color: Color(0xff4A80F0)
                    ),),
                )
              ],
            ),
          ),


          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popular_name.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: popular_background[index]
                    ),

                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(popular_name[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30
                                ),),
                              SizedBox(height: 10,),

                              Text(popular_description[index],
                                style: TextStyle(
                                    color: Colors.white60
                                ),),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text('${popular_step[index]}steps',
                                      style: TextStyle(
                                          color: Colors.white60
                                      )),
                                  SizedBox(width: 6,),
                                  Container(
                                    width: 1,
                                    height: 15,
                                    color: Colors.white60,
                                  ),
                                  SizedBox(width: 6,),
                                  Text('${popular_time[index]}min',
                                      style: TextStyle(
                                          color: Colors.white60
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),

                        SvgPicture.asset(
                          popular_image[index],
                          height: 120.0,
                          width: 120.0,
                          allowDrawingOutsideViewBox: true,
                        )

                      ],
                    ),
                  ),
                );



              },
            ),

          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
                Text('See All',
                  style: TextStyle(
                      color: Color(0xff4A80F0)
                  ),)
              ],
            ),
          ),





          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: new_name.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: new_background[index]
                    ),

                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(new_name[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30
                                ),),
                              SizedBox(height: 10,),

                              Text(new_description[index],
                                style: TextStyle(
                                    color: Colors.white60
                                ),),
                              SizedBox(height: 20,),
                              Row(
                                children: [

                                  Text('${new_time[index]}min',
                                      style: TextStyle(
                                          color: Colors.white60
                                      )
                                  )
                                ],
                              )
                            ],
                          ),
                        ),

                        SvgPicture.asset(
                          popular_image[index],
                          height: 120.0,
                          width: 120.0,
                          allowDrawingOutsideViewBox: true,
                        )

                      ],
                    ),
                  ),
                );

              },
            ),

          ),

        ],
      ),
    );
  }
}
