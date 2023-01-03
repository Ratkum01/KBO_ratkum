import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/assets/icons/icon.dart';
import 'package:school_aul/kursi_aul/kurs_besp_video/kurs_besp_video_kazt.dart';

class Besplatni_kurs extends StatelessWidget {
  const Besplatni_kurs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(children: [
        // ignore: prefer_const_constructors
        ListTile(
          leading: Icon(
            Aul_icon.kazakh,
             color:Color.fromARGB(248, 2, 124, 27),
            size: 40,
          ),
          title: Text(
            'Қазақ тілі',
            style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('24 видео'),
          trailing: const Icon(Icons.arrow_forward, ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Kurs_besp_vedeo_kaz();
            }));
          },
        ),
        // ignore: prefer_const_constructors
        ListTile(
          leading: Icon(
            Aul_icon.literature,
            size: 40,
            color:Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Қазақ әдебиеті',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(248, 2, 124, 27)
               ),
          ),
          subtitle: Text('14 видео'),
          trailing:
              Icon(Icons.arrow_forward, color:Color.fromARGB(248, 2, 124, 27)),
        ),
        // ignore: prefer_const_constructors
        ListTile(
          leading: Icon(
            Aul_icon.math,
            size: 40,
            color:Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Математика',
            style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('35 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Icon(
            Aul_icon.physical,
            size: 40,
            color: Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Физика',
            style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('55 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Icon(
            Aul_icon.chemistry,
            size: 40,
            color: Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Химия',
            style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('55 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Icon(
            Aul_icon.biology,
            size: 40,
            color: Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Биология',
            style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('55 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Icon(
            Aul_icon.russian_uotpthpz0dvx,
            size: 40,
            color: Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Русский язык',
            style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('55 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Icon(
            Aul_icon.binary_code,
            size: 40,
            color: Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Информатика',
            style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('55 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Icon(
            Aul_icon.history,
            size: 40,
            color: Color.fromARGB(248, 2, 124, 27)
          ),
          title: Text(
            'Тарих',
            style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 2, 124, 27)),
          ),
          subtitle: Text('55 видео'),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ]),
    );
  }
}
