import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_121223/pages/login.dart';
import 'package:work_121223/pages/profile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/wl.png'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: ContinuousRectangleBorder(),
                ),
                onPressed: () {
                  Get.to(() => LoginPage());
                },
                icon: const Icon(
                  Icons.login,
                  color: Colors.amberAccent,
                ),
                label: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: ContinuousRectangleBorder(),
                ),
                onPressed: () {
                  Get.to(() => ProfilePage());
                },
                icon: const Icon(Icons.person, color: Colors.grey),
                label: const Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
