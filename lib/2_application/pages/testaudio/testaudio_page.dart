import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  SongPageState createState() => SongPageState();
}

class SongPageState extends State<SongPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Audio Test'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            'Play Song',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: () async {
            player.play(AssetSource('audio/alphabetSounds/5haha.mp3'));
            // await _sm.playLocal('assets/1oora.mp3');
          },
        ),
      ),
    );
  }
}
