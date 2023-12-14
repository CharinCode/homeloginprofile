// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_121223/pages/homepage.dart';
import 'package:work_121223/pages/login.dart';
import 'package:work_121223/pages/profile.dart';

// ignore: must_be_immutable
class DrawerNav extends StatelessWidget {
  Color color;
  DrawerNav({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: color,
            ),
            child: Text(
              'Charin Phimathai',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Get.to(() => HomePage());
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Get.to(() => ProfilePage());
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Get.to(() => LoginPage());
            },
          ),
        ],
      ),
    );
  }
}
