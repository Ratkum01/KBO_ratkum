import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:profile/profile.dart';

import '../../ratkum_prof.dart';
import '../list_uchetelya.dart';

class UchitelTS extends StatefulWidget {
  const UchitelTS({Key? key}) : super(key: key);

  @override
  State<UchitelTS> createState() => _UchitelTSState();
}

class _UchitelTSState extends State<UchitelTS> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(248, 120, 66, 154),
        title: Text("Ocenka"),
        centerTitle: true,
      ),
      body: Center(
        child: _bildBody(),
      ),
    );
  }
}

//
Widget _bildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _avatar(),
        // _headerImage(),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[_uchitel_reting()],
          ),
        )),
      ],
    ),
  );
}


_avatar(){
  return Ratkum_prof(imageUrl:
 
        avaterTStark().urlAvatar,
    name: avaterTStark().username,
    designation: avaterTStark().designation,
    email: avaterTStark().email,
    phone_number: avaterTStark().phone_number, );
}
Widget _uchitel_reting() {
  return RatingBar.builder(
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
    itemBuilder: (context, _) => Icon(Icons.star, color: Color.fromARGB(248, 120, 66, 154)),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}
