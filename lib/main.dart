import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: AudioButtonColumn()),
      ),
    );
  }
}

class AudioButtonColumn extends StatefulWidget {
  @override
  _AudioButtonColumnState createState() => _AudioButtonColumnState();
}

class _AudioButtonColumnState extends State<AudioButtonColumn> {
  final AudioPlayer _player = AudioPlayer();

  // List of audio URLs
  final List<String> _audioUrls = [
    'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-4.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-5.mp3',
  ];

  Future<void> _playAudio(String url) async {
    try {
      await _player.setUrl(url);
      await _player.play();
    } catch (e) {
      print('Error playing audio: $e');
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green.shade400,
      Colors.blue,
      Colors.purple.shade800,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(6, (index) {
        return Expanded(
          child: TextButton(
            onPressed: () => _playAudio(_audioUrls[index]),
            style: TextButton.styleFrom(
              backgroundColor: colors[index],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text(' ', style: TextStyle(color: Colors.white)),
          ),
        );
      }),
    );
  }
}
