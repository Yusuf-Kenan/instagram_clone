import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile_components/app_bar_profile.dart';

import '../../components/profile_components/profile_info.dart';
import '../../components/profile_components/profile_status_edit.dart';
import '../../components/profile_components/profile_stories.dart';
import '../../components/profile_components/profile_tab_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            AppBarProfile(),
            ProfileInfo(),
            ProfileStatusEdit(),
            ProfileStories(),
            ProfileTabBar()
          ],
        ),
      ),
    );
  }
}
