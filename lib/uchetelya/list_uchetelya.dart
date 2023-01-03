import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_alber_e.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_ilon_m.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_jon_k.dart';

import 'sami uchitelya/uchitel_mag_h.dart';
import 'sami uchitelya/uchitel_stive_j.dart';
import 'sami uchitelya/uchitel_tony_s.dart';

class ListUchitelya extends StatefulWidget {
  const ListUchitelya({super.key});

  @override
  State<ListUchitelya> createState() => _ListUchitelyaState();
}

class _ListUchitelyaState extends State<ListUchitelya> {
  // List<User> user = [
  //   const User(
  //       username: 'Магрипа Хриполаевна',
  //       email: 'magriH@gmail.com',
  //       urlAvatar:
  //           'https://images.unsplash.com/photo-1598618356794-eb1720430eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  //       designation: 'Қазақ тілі | Мугалими',
  //       phone_number: '+7 777 777 77 77'),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список ваших учителей'),
        backgroundColor: Color.fromARGB(248, 120, 66, 154),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            //Магрипа
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avaterMHrip().urlAvatar),
              ),
              title: Text(avaterMHrip().username),
              subtitle: Text(avaterMHrip().designation),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Ocenka_uch();
                }));
              },
            ),
            //Тони Старк
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avaterTStark().urlAvatar),
              ),
              title: Text(avaterTStark().username),
              subtitle: Text(avaterTStark().designation),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UchitelTS();
                }));
              },
            ),
            //Алберт Э
            ListTile(
              leading: CircleAvatar(
                radius: 28,
               backgroundImage: NetworkImage(avaterAlbertE().urlAvatar),
              ),
              title: Text(avaterAlbertE().username),
              subtitle: Text(avaterAlbertE().designation),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UchitelAE();
                }));
              },
            ),
            //Стив Джобс
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avaterSJobs().urlAvatar),
              ),
              title: Text(avaterSJobs().username),
              subtitle: Text(avaterSJobs().designation),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UchitelSJ();
                }));
              },
            ), 
            //Илон Маск
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avaterIMusk().urlAvatar),
              ),
              title: Text(avaterIMusk().username),
              subtitle: Text(avaterIMusk().designation),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UchitelIM();
                }));
              },
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(avaterJKennedy().urlAvatar),
              ),
              title: Text(avaterJKennedy().username),
              subtitle: Text(avaterJKennedy().designation),
              trailing: const Icon(Icons.arrow_forward),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UchitelJK();
                }
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

avaterMHrip() {
  return User(
      username: 'Магрипа Хриполаевна',
      email: 'magri@gmail.com',
      urlAvatar:
          'https://images.unsplash.com/photo-1598618356794-eb1720430eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      designation: 'Қазақ тілі | Учитель',
      phone_number: '+7 777 777 77 77');
}

avaterTStark() {
  return User(
      username: 'Тони Старкович',
      email: 'tstark@gmail.com',
      urlAvatar:
          'https://get.wallhere.com/photo/The-Avengers-Avengers-Age-of-Ultron-Robert-Downey-Jr-Tony-Stark-screenshot-131274.jpg',
      designation: 'Физика | Учитель',
      phone_number: '+7 777 777 77 77');
}

avaterSJobs() {
  return User(
      username: 'Стив Джобс',
      email: 'stivej@gmail.com',
      urlAvatar:
          'https://img.theepochtimes.com/assets/uploads/2015/02/16/98328574-1200x845.jpg',
      designation: 'Химия | Учитель',
      phone_number: '+7 777 777 77 77');
}

avaterIMusk() {
  return User(
      username: 'Илон Масеке',
      email: 'ilonm@gmail.com',
      urlAvatar:
          'https://newtimes.kz/storage/news/news/2021/05/09/6097a019db289509487424.jpg',
      designation: 'Русский язык | Учитель',
      phone_number: '+7 777 777 77 77');
}

avaterJKennedy() {
  return User(
      username: 'Джон Кэнади',
      email: 'jkennedy@gmail.com',
      urlAvatar:
          'https://rgnp.ru/wp-content/uploads/a/5/8/a58ef6792845934c0574d4288a42f767.jpeg',
      designation: 'Алгебра | Учитель',
      phone_number: '+7 777 777 77 77');
}
avaterAlbertE() {
  return User(
      username: 'Альберт Энштейнбек',
      email: 'albert@gmail.com',
      urlAvatar:
          'https://avatars.mds.yandex.net/i?id=aadf2cdce53cccf380d9e3d681ccc7ea-5293527-images-thumbs&n=13',
      designation: 'История Казахстана | Учитель',
      phone_number: '+7 777 777 77 77');
}

// класс Учителей
class User {
  final String username;
  final String email;
  final String urlAvatar;
  final String designation;
  final String phone_number;

  const User({
    required this.username,
    required this.email,
    required this.urlAvatar,
    required this.designation,
    required this.phone_number,
  });
}
