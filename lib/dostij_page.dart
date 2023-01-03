import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dostijenye extends StatelessWidget {
  const Dostijenye({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Достижение '), centerTitle: true, backgroundColor: Color.fromARGB(248, 120, 66, 154),),
      body: Container(child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Icon(Icons.abc, size: 70,),
          Icon(Icons.abc, size: 70,),
          Icon(Icons.abc, size: 70,)
        ],
      )],)),
    );
  }
}