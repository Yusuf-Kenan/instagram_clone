import 'package:flutter/material.dart';

class ProfileGridTagged extends StatefulWidget {
  const ProfileGridTagged({Key? key}) : super(key: key);

  @override
  State<ProfileGridTagged> createState() => _ProfileGridTaggedState();
}

class _ProfileGridTaggedState extends State<ProfileGridTagged> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5),
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      crossAxisCount: 3,
      children: <Widget>[

        _taggedItem("https://i.ytimg.com/vi/xcz9vKDjbIc/maxresdefault.jpg"),
        _taggedItem("https://static.wikia.nocookie.net/currentmusic/images/7/79/Irina.png/revision/latest?cb=20200830153158"),
        _taggedItem("https://www.ravejungle.com/wp-content/uploads/2022/10/Irina-Rimes-Press-Image-1-Parlophone-Warner-Music-France.jpg"),
        _taggedItem("https://cdn.globaldanceelectronic.com/wp-content/uploads/2022/10/Irina-Rimes-Press-Image-2-Parlophone-Warner-Music-France.jpg"),

      ],
    );
  }


  Widget _taggedItem(String sharedPic){
    return Container(
        padding: const EdgeInsets.all(3),
        child: Image(image: NetworkImage(sharedPic),

        )
    );
  }


}
