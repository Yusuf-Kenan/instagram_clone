import 'package:flutter/material.dart';
import 'package:instagram_clone/components/profile_components/profile_gridview_shared.dart';
import 'package:instagram_clone/components/profile_components/profile_gridview_tagged.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({Key? key}) : super(key: key);

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Column(
            children: [
          TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.grid_on_sharp, color: Colors.white,)),
              Tab(icon: Icon(Icons.person_pin_sharp, color: Colors.white))
            ],
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                Center(child: ProfileGridShared()),
                Center(child: ProfileGridTagged())
              ],
            ),
          )
            ],
          )),
    );
  }
}
