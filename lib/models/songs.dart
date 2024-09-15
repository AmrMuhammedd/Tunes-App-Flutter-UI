import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes/Componets/details_song.dart';
import 'package:tunes/screen/tunes_screen.dart';

class Songs extends StatelessWidget {
  const Songs({super.key});

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    AppBar appBar=AppBar(
      elevation: 0,
      backgroundColor: const Color(0xff253238),
      centerTitle: true,
      title: const Text(
        "Flutter Tune",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );


    double appBarHeight =appBar.preferredSize.height;

    return Scaffold(
      appBar: appBar,
      body: ListView.builder(
        itemCount: songss.length,
        itemBuilder: (context, index) {
          return tunes_screen(

            bloc_sond: songss[index],
            height: (screenHeight - appBarHeight) / (songss.length),  // Adjust height excluding the AppBar
          );
        },
      ),
    );
  }
}

List<details_song> songss = [
  details_song(color: 0xffE72929, sound: "note1.wav"),
  details_song(color: 0xffE85C0D, sound: "note2.wav"),
  details_song(color: 0xffFABC3F, sound: "note3.wav"),
  details_song(color: 0xff387F39, sound: "note4.wav"),
  details_song(color: 0xff0D7C66, sound: "note5.wav"),
  details_song(color: 0xff48CFCB, sound: "note6.wav"),
  details_song(color: 0xff7A1CAC, sound: "note7.wav"),
];
