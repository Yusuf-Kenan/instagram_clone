import 'package:flutter/material.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9),
                  child: Container(
                    margin: EdgeInsets.only(left:9, right:5, top:5, bottom:5),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://static.wikia.nocookie.net/nvsc/images/6/69/Andreea_Balan.jpg/revision/latest?cb=20140111125105"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 120,
                      padding: EdgeInsets.only(left:19),
                      child: Text("Andreea Balan",
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          style:TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),



            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30, right: 30),
                  child: Column(
                    children: [
                      Text("24",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.white
                        ),
                      ),
                      Text("Postari",
                      style: TextStyle(
                          color: Colors.white
                      ))
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Text("195",
                         style: TextStyle(
                             fontWeight:
                             FontWeight.bold,
                             fontSize: 19,
                             color: Colors.white
                         ),
                      ),
                      Text("Urmaritori",
                          style: TextStyle(
                              color: Colors.white
                          )
                      )
                    ],
                  ),
                ),

                Column(
                  children: [
                    Text("179",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white
                      ),
                    ),
                    Text("Urmariri",
                    style: TextStyle(
                        color: Colors.white
                    ))
                  ],
                )
              ],
            )


          ],
        ),
      ],
    );
  }
}
