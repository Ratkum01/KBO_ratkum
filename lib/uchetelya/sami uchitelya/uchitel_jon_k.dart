import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../ratkum_prof.dart';
import '../list_uchetelya.dart';

class UchitelJK extends StatefulWidget {
  const UchitelJK({super.key});

  @override
  State<UchitelJK> createState() => _UchitelJKState();
}

class _UchitelJKState extends State<UchitelJK> {
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
 
        avaterJKennedy().urlAvatar,
    name: avaterJKennedy().username,
    designation: avaterJKennedy().designation,
    email: avaterJKennedy().email,
    phone_number: avaterJKennedy().phone_number, );
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