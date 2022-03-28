import 'package:audioplayers/audioplayers.dart';
import 'package:erico_intro/lesson.dart';
import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  @override
  State<AudioPlayerPage> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayerPage> {
  late AudioPlayer audioPlayer;
  String duration = '00.00.00';

  _AudioPlayerState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((Duration d) {
      setState(() {
        print('Current position: $d');
        duration = d.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Lesson.Audio_Player.name),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  playSound(
                      'https://dl.pop-music.ir/music/1399/Ordibehesht/Hossein%20Mansourian%20-%20Bekhand%20(Remix)%20(128).mp3');
                },
                child: Text('Play'),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text('Pause'),
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text('Stop'),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Resume'),
              ),
              Text(
                duration,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ));
  }
}
