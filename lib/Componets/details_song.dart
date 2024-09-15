import 'package:audioplayers/audioplayers.dart';

class details_song {
   final int color;
   final String ? sound;
  const details_song({required this.color,required this.sound});
  void play_song()
  {
    final player = AudioPlayer();
    player.play(AssetSource(sound!));
  }
}