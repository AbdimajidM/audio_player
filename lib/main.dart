import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  IconData playIcon = Icons.play_arrow;

  final assetsAudioPlayer = AssetsAudioPlayer();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            excludeHeaderSemantics: true,
            title: Center(
              child: Text("Audio Player"),
            ),
          ),
          body: Container(
              color: Colors.blue,
              height: 800,
              width: 415,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/audio.jpg'),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: null,
                          iconSize: 40,
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.white,

                          ),
                        ),
                        IconButton(
                          onPressed: (){
                            assetsAudioPlayer.open(
                              Audio("assets/audio/2.mp3"),
                            );


                            // if(playIcon == Icons.play_arrow){
                            //   setState(() {
                            //     playIcon = Icons.pause;
                            //   });
                            // } else {
                            //   setState(() {
                            //     playIcon = Icons.play_arrow;
                            //   });
                            // }

                          },
                          iconSize: 40,
                          icon: Icon(
                              playIcon,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                          },
                          iconSize: 40,
                          icon: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ])),
        ));
  }
}
