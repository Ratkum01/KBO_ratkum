import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  // final icon= CupertinoIcons.moon_stars; 
  return AppBar(
    leading: BackButton(),
    backgroundColor: Color.fromARGB(248, 120, 66, 154),
    elevation: 10,
    actions: [IconButton(onPressed: (){}, icon: Icon(Icons.monetization_on, size:40 , ),  )],
  );
}
