import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          title: Center(child: Text("i'am rich")),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://scontent.fcok3-1.fna.fbcdn.net/v/t39.30808-6/485055743_956072970032527_3364740228319656277_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=105&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=7ns8WyHP6boQ7kNvwFk0_6U&_nc_oc=Adl_ZXYnxXV_GMyPp2V4AJ5FbMVr9GZw21zhVj93gfg2xhVieLjKV5AGPS4wNA4vPdz8gkataHp19CSmg3V0AXW3&_nc_zt=23&_nc_ht=scontent.fcok3-1.fna&_nc_gid=VMAQKyVNj29rA0DczARv2w&oh=00_AfOLghGEipqlyFAIrk9z-90kZfjQB78Qv9FpTH2_u07bAQ&oe=68604193',
            ),
          ),
        ),
      ),
    ),
  );
}
