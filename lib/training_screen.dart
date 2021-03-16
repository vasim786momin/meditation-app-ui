import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TrainingScreen extends StatefulWidget {
  @override
  _TrainingScreenState createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {

  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  void seekToSecond(int second){
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    advancedPlayer.stop();
  }



  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });

    audioCache.play('despacito.mp3');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff2D31AC),
      body: Stack(
          children: [
            Image.asset('images/hills.png'),
            Positioned(
              top: 350,
                child: Image.asset('images/left_nature.png')),
            Positioned(
              top: 350,
                left: MediaQuery.of(context).size.width-80,
                child: Image.asset('images/training_right_nature.png')),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Text('Mental Training',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  ),


                  InkWell(
                    onTap: (){
                      advancedPlayer.stop();
                      Navigator.pop(context);
                    },
                      child: Image.asset('images/close.png')),


                ],
              ),
            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Image.asset('images/like.png'),

                      Image.asset('images/pause.png'),


                      Image.asset('images/sliders.png'),



                    ],
                  ),




                  Slider(
                      activeColor: Colors.white,
                      inactiveColor:Colors.grey,
                      value: _position.inSeconds.toDouble(),
                      min: 0.0,
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          seekToSecond(value.toInt());
                          value = value;
                        });})
                ],
              ),

            ),




          ],
        ),
    );
  }
}

