import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/components/dm_screen_mesage.dart';
import 'package:instagram_clone/components/message_notes.dart';

class DmScreen extends StatelessWidget {
  const DmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
                MessageNote(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
                DmScreenMesage(),
         
        ],
      ),
    );
  }
}
