import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tunes/Componets/details_song.dart';

class tunes_screen extends StatelessWidget {
   tunes_screen({required this.bloc_sond,required this.height});
details_song bloc_sond;
double height;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onTap: () {
          bloc_sond.play_song();
        },
        child: Container(
          height: height,
          color:Color(bloc_sond.color) ,
        ),

    );
  }
}
