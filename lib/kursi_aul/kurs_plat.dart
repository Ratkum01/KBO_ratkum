import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/assets/icons/icon.dart';

class Platni_kurs extends StatelessWidget {
  const Platni_kurs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color.fromARGB(248, 248, 231, 255),
      body:
      
      ListView(children: [
        
          // ignore: prefer_const_constructors
          ListTile(
            leading: Icon(
              Aul_icon.programming,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
              
            ),
            title: Text('Программирование', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('24 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.english_language,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('English', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('14 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Icons.school_rounded,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Подготовка к ЕНТ', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('14 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.physical,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Физика',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('55 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.chemistry,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Химия',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('55 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.biology,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Биология',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('55 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.russian_uotpthpz0dvx,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Русский язык',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('55 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.binary_code,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Информатика',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('55 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
          ListTile(
            leading: Icon(
              Aul_icon.history,
              size: 40,
              color: Color.fromARGB(248, 120, 66, 154),
            ),
            title: Text('Тарих',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(248, 120, 66, 154),),),
            subtitle: Text('55 видео'),
            trailing: const Icon(Icons.arrow_forward),
          ),
        ]),
    );
  }
}