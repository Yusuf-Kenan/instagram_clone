import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:story_view/story_view.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  final controller=StoryController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: [
          StoryItem.text(title: "Hello", backgroundColor: Colors.white),
          StoryItem.pageImage(url: 'https://images.unsplash.com/photo-1533561797500-4fad4750814e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5zdGFncmFtJTIwc3Rvcmllc3xlbnwwfHwwfHw%3D&w=1000&q=80', controller: controller)
        ],
        controller: controller,
        inline: false,
        repeat: false,
      ),
    );
  }
}