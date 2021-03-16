
import 'package:financial_app_ui/profile.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home.dart';
import 'meditation.dart';
import 'second_tab.dart';
import 'training_screen.dart';

class HomeSeeAll extends StatefulWidget {
  @override
  _HomeSeeAllState createState() => _HomeSeeAllState();
}

class _HomeSeeAllState extends State<HomeSeeAll> {


 Future getPopular()async{

  var firestore=Firestore.instance;
  QuerySnapshot qn=await firestore.collection('popular').getDocuments();

  return qn.documents;

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,
                  color: Colors.black,),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.30,),
                Row(
                  children: [
                    Text('Popular',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),),
                  ],
                )
              ],
            ),
            FutureBuilder(
              future: getPopular(),
              builder: (_,snapshot){

              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }else{
              return ListView.separated(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (BuildContext context, _, __) =>
                              TrainingScreen()));

                    },
                    child: ListTile(

                       //leading:Image.asset('images/bg.png'),
                        leading:Image.network(snapshot.data[index].data['img']),
                        title: Text(snapshot.data[index].data['name']),
                        trailing:Image.asset('images/like.png',
                        color: Colors.grey,) ,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              );

              }

            },)



          ],
        ),
      ),

    );
  }
}
