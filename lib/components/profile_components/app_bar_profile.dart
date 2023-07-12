import 'package:flutter/material.dart';

class AppBarProfile extends StatefulWidget {
  const AppBarProfile({Key? key}) : super(key: key);

  @override
  State<AppBarProfile> createState() => _AppBarProfileState();
}

class _AppBarProfileState extends State<AppBarProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:10, right:5),
          child: Icon(Icons.lock, color: Colors.white),
        ),
        Text("andreeabalanoficial",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white
        ),
        ),
        Icon(
            Icons.arrow_drop_down,
            color: Colors.white
          ),

        Expanded(
          child: SizedBox(

          ),
        ),

        Icon(
          Icons.add_box_outlined,
          size: 30,
          color: Colors.white),
        Padding(
          padding: const EdgeInsets.only(right:10, left: 9),
          child: Icon(
              Icons.list,
              size:30,
              color: Colors.white),
        )
      ],

    );
  }
}
