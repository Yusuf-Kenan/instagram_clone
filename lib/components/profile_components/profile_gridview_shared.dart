import 'package:flutter/material.dart';

class ProfileGridShared extends StatefulWidget {
  const ProfileGridShared({Key? key}) : super(key: key);

  @override
  State<ProfileGridShared> createState() => _ProfileGridSharedState();
}

class _ProfileGridSharedState extends State<ProfileGridShared> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5),
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 3,
      children: <Widget>[

        _sharedItem("https://images.gsp.ro//usr/thumbs/thumb_1200_x_0/2018/12/22/958347-andreea-balan-2.jpg?optimal?new=1"),
        _sharedItem("https://yt3.googleusercontent.com/ytc/AL5GRJWr-5NWD_IsOnjdzvXO2eS0BaULP_37srFVVUI0xQ=s900-c-k-c0x00ffffff-no-rj"),
        _sharedItem("https://images.gsp.ro//usr/thumbs/thumb_1200_x_0/2018/12/22/958347-andreea-balan-2.jpg?optimal?new=1"),
        _sharedItem("https://images.gsp.ro//usr/thumbs/thumb_1200_x_0/2018/12/22/958347-andreea-balan-2.jpg?optimal?new=1"),

      ],
    );
  }

  Widget _sharedItem(String sharedPic){
    return Container(
        padding: const EdgeInsets.all(1),
        child: Image(image: NetworkImage(sharedPic),
           
        )
    );
  }

}
