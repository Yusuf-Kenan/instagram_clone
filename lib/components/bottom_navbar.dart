import 'package:flutter/material.dart';
import 'package:instagram_clone/view/createPost/create_post_screen.dart';
import 'package:instagram_clone/view/home/discovery_screen.dart';
import 'package:instagram_clone/view/home/timeline_screen.dart';
import 'package:instagram_clone/view/profile/profile_screen.dart';
import 'package:instagram_clone/view/reels/reels_screen.dart';
import 'package:instagram_clone/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          for (int i = 0; i < icons.length; i++) iconButton(icons[i], i),
        ]),
      ),
    );
  }

  List<String> icons = [
    "assets/icons/home.png",
    "assets/icons/search.png",
    "assets/icons/add.png",
    "assets/icons/reels.png",
    "assets/icons/profil.png",
  ];

  Widget iconButton(String icon, int index) => GestureDetector(
        onTap: () {
          context.read<HomePageViewModel>().setPage(index);
          switch (context.read<HomePageViewModel>().page) {
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreatePostScreen()));
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReelScreen()));
              break;
            case 4:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
            default:
          }
        },
        child: Opacity(
          opacity: context.watch<HomePageViewModel>().page == index ? 1.0 : 0.7,
          child: Image.asset(
            icon,
            width: 28,
            height: 28,
          ),
        ),
      );
}
