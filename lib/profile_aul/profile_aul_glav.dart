import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/profile_aul/model/user.dart';
import 'package:school_aul/profile_aul/utils/user_perferences.dart';
import 'package:school_aul/profile_aul/widget/button_widget.dart';
import 'package:school_aul/profile_aul/widget/profile_widget.dart';
import 'appbar_widget/appbar_widget.dart';
import 'edit_profile_page.dart';

class Profile_aul extends StatefulWidget {
  const Profile_aul({super.key});

  @override
  State<Profile_aul> createState() => _Profile_aulState();
}

class _Profile_aulState extends State<Profile_aul> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 24,
            ),
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            const SizedBox(
              height: 24,
            ),
            buildName(user),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: buildUpgradeButton(),
            ),
            const SizedBox(height: 48),
            buildAbout(user),
          ],
        ));
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade to pro',
        onClicked: () {},
      );
  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(user.about, style: TextStyle(fontSize: 16, height: 1.4))
          ],
        ),
      );
}
