import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DmScreenMesage extends StatelessWidget {
  DmScreenMesage({super.key});

  @override
  Faker faker = Faker();
  Widget build(BuildContext context) {
    return Row(
      children: [
        profilImage(faker.image.image()),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            faker.person.firstName(),
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      
         Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.camera_alt_outlined))
            
      
      ],
    );
  }
}

Widget profilImage(String image) {
  return Container(
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomRight,
        colors: [
          Colors.purple,
          Colors.pink,
          Colors.orange,
        ],
      ),
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
  );
}
