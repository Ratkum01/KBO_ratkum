import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/kursi_aul/kurs_aul.dart';

import 'dostij_page.dart';
import 'glavka.dart';
import 'help_aul/help_page.dart';
import 'profile_aul/edit_profile_page.dart';
import 'profile_aul/model/user.dart';
import 'profile_aul/profile_aul_glav.dart';
import 'profile_aul/utils/user_perferences.dart';
import 'profile_aul/widget/profile_widget.dart';
import 'profile_aul/widget/textfield_widget.dart';
import 'uchetelya/list_uchetelya.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Color.fromARGB(248, 120, 66, 154),
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  onClicked: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Profile_aul()),
                    );
                  },
                ),
                buildName(user),
              ],
            ),
          ),
          // buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }
}

// Widget buildHeader(BuildContext context) => Container(
//       color: Color.fromARGB(255, 208, 95, 2),
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).padding.top,
//       ),
//       child: Column(
//         children: [buildName(use)],
//       ),
//     );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(14),
      child: Wrap(
        // для интервала по вертикали

        runSpacing: 3,
        children: [
          ListTile(
            leading: const Icon(Icons.people_alt_outlined),
            title: const Text('Учителя'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListUchitelya();
              }
              ));
            },
          ),

          const Divider(
            height: 6,
            color: Colors.black54,
          ), //ДЕЛИТЕЛЬ

          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Курсы'),
           onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Kurs_aul();
              }
              ));
           }
          ),
const Divider(
            height: 6,
            color: Colors.black54,
          ), ///ДЕЛИТЕЛЬ

          ListTile(
              leading: const Icon(Icons.local_atm_sharp),
              title: const Text('Заработок'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Dostijenye();
              }
              ));
              }),
         const Divider(
            height: 6,
            color: Colors.black54,
          ),

          ListTile(
              leading: const Icon(Icons.help_center),
              title: const Text('Помощь'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HelpPage();
              }
              ));
              }),
          const Divider(
            height: 6,
            color: Colors.black54,
          ),
          ListTile(
              leading: const Icon(Icons.exit_to_app_rounded),
              title: const Text(
                'GLAVKA',
                style: TextStyle(color: Colors.red),
              ),
              iconColor: Colors.red,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Glavka();
              }
              ));
              }),

          ListTile(
              leading: const Icon(Icons.exit_to_app_rounded),
              title: const Text(
                'Выйти',
                style: TextStyle(color: Colors.red),
              ),
              iconColor: Colors.red,
              onTap: (() {
                FirebaseAuth.instance.signOut();
              })),
        ],
      ),
    );
Widget buildName(user) => Column(
      children: [
        Text(
          user.name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        Text(
          user.email,
          style: TextStyle(color: Color.fromARGB(255, 200, 200, 200)),
        )
      ],
    );
