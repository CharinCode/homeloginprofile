// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:work_121223/component/drawer.dart';
import 'package:work_121223/pages/homepage.dart';
import 'package:work_121223/pages/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => LoginPage());
              },
              icon: Icon(
                Icons.login,
                color: Colors.blueGrey,
                size: 30,
              ))
        ],
      ),
      drawer: DrawerNav(color: Colors.deepOrange.shade300),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage('image/profile_image.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Charin Phimathai',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'stu6412732102@sskru.ac.th',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Bio: Software Developer and Flutter Enthusiast. Passionate about creating awesome mobile applications.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Location'),
              subtitle: Text('Thailand, Sisaket'),
            ),
            ListTile(
              title: Text('Joined Date'),
              subtitle: Text('October 31, 2002'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              child: Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
