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
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playAudio('https://raw.githubusercontent.com/Christo790/flutter/main/audio/a.wav');
                    },
                    child: Text(' '),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playAudio('https://raw.githubusercontent.com/Christo790/flutter/main/audio/b.wav');
                    },
                    child: Text(' '),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playAudio('https://raw.githubusercontent.com/Christo790/flutter/main/audio/c.wav');
                    },
                    child: Text(' '),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playAudio('https://raw.githubusercontent.com/Christo790/flutter/main/audio/d.wav');
                    },
                    child: Text(' '),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playAudio('https://raw.githubusercontent.com/Christo790/flutter/main/audio/f.wav');
                    },
                    child: Text(' '),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      playAudio('https://raw.githubusercontent.com/Christo790/flutter/main/audio/g.wav');
                    },
                    child: Text(' '),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple.shade800,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to play audio from URL using a new AudioPlayer each time
  static Future<void> playAudio(String url) async {
    final player = AudioPlayer();
    try {
      await player.setUrl(url);
      await player.play();
    } catch (e) {
      print('Error playing audio: $e');
    } finally {
      await player.dispose();
    }
  }
}
