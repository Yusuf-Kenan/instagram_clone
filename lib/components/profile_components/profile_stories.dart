import 'package:flutter/material.dart';

class ProfileStories extends StatefulWidget {
  const ProfileStories({Key? key}) : super(key: key);

  @override
  State<ProfileStories> createState() => _ProfileStoriesState();
}

class _ProfileStoriesState extends State<ProfileStories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(left:15, top:8, right: 15),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [

            _buttonItem(),
            _storyItem("https://lyricstranslate.com/files/styles/artist/public/14169844513edf28f7.jpg", "Poza 1"),
            _storyItem("https://cdn.knd.ro/media/521/2864/1698/20281590/1/321140925-1378749286266431-3370537350611448604-n--crop-1673002722.jpg", "Poza 2"),
            _storyItem("https://media.evz.ro/wp-content/uploads/2022/01/andreea-balan.v1.jpg", "Poza 3"),
            _storyItem("https://media.evz.ro/wp-content/uploads/2022/01/andreea-balan.v1.jpg", "Poza 3"),
            _storyItem("https://media.evz.ro/wp-content/uploads/2022/01/andreea-balan.v1.jpg", "Poza 3"),
            _storyItem("https://media.evz.ro/wp-content/uploads/2022/01/andreea-balan.v1.jpg", "Poza 3"),
            _storyItem("https://media.evz.ro/wp-content/uploads/2022/01/andreea-balan.v1.jpg", "Poza 3"),
            _storyItem("https://media.evz.ro/wp-content/uploads/2022/01/andreea-balan.v1.jpg", "Poza 3"),


          ],
        ),
      ),
    );
  }

  Widget _buttonItem() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Container(
            margin: EdgeInsets.all(3),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/icons/add3.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            "Nou",
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }


  Widget _storyItem(String image, String name) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey
          ),
          child: Container(
            margin: EdgeInsets.all(3),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 70,
          child: Text(
            name,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    );
  }

}
