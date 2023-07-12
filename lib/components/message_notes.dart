import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageNote extends StatefulWidget {
  const MessageNote({Key? key}) : super(key: key);

  @override
  State<MessageNote> createState() => _MessageNoteState();
}

class _MessageNoteState extends State<MessageNote> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _noteItem("https://image.tmdb.org/t/p/original/bgvn6iIAXSaFch1LF7ThknRZ4k4.jpg", "Not 1"),
          _noteItem2("https://image.tmdb.org/t/p/original/bgvn6iIAXSaFch1LF7ThknRZ4k4.jpg", "Not 1"),
          _noteItem2("https://image.tmdb.org/t/p/original/bgvn6iIAXSaFch1LF7ThknRZ4k4.jpg", "Not 1"),
          _noteItem2("https://image.tmdb.org/t/p/original/bgvn6iIAXSaFch1LF7ThknRZ4k4.jpg", "Not 1"),
          _noteItem2("https://image.tmdb.org/t/p/original/bgvn6iIAXSaFch1LF7ThknRZ4k4.jpg", "Not 1"),
        ],
      )
    );
  }

  Widget _noteItem(String profilePic, String note)
  {
    return  Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle
            ),

            child: Stack(
              children: <Widget>[Container(
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(profilePic),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 0, top: 0,
                child: Container(width:40, height:40,
                  decoration:  BoxDecoration(
                image:  DecorationImage(
                  image:  AssetImage('assets/icons/add2.png'),
                  fit: BoxFit.cover,
                ),
                  ),
                ),
              )
            ]
            ),
          ),
        Container(child: Text(note, style: TextStyle(fontSize: 10, color: Colors.grey),)),
        ],

      );
  }


  Widget _noteItem2(String profilePic, String note)
  {
    return  Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                shape: BoxShape.circle
            ),

            child: Container(
                  margin: EdgeInsets.all(5),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(profilePic),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
          Container(child: Text(note, style: TextStyle(fontSize: 10, color: Colors.grey),)),
        ],

      );
  }
}




