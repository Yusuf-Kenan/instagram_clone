import 'package:flutter/material.dart';

class ProfileStatusEdit extends StatefulWidget {
  const ProfileStatusEdit({Key? key}) : super(key: key);

  @override
  State<ProfileStatusEdit> createState() => _ProfileStatusEditState();
}

class _ProfileStatusEditState extends State<ProfileStatusEdit> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left:20, right: 20),
              child: Text("Andreea Balan este Romanesc şi ea locuesca in Braşov... kfgjkldfjgkldfjglkdfjgkldfjglkdfjglkdfjglkdfjglkfdjglkdfjglkdfjglkdfjglkdfjglkdf",
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                  style:TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  )
              ),
            ),
          ],
        ),
       Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(left:20, right:10, top: 5),
             child: SizedBox(
                 width: MediaQuery.of(context).size.width-90,
                 height: 25,
                 child: ElevatedButton(
                     onPressed: (){},
                     child: Text("Editeaza profilul",
                     style: TextStyle(
                         color: Colors.white
                     )
                     )
                 )
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(top:5),
             child: SizedBox(
               width: 45,
               height: 25,
               child: ElevatedButton(
                 onPressed: () {  },
                 child: Icon(Icons.person_add),

               ),
             ),
           )

         ],
       )
      ],
    );
  }
}

