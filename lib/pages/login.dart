// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_121223/component/cuttom_text.dart';
import 'package:work_121223/component/drawer.dart';
import 'package:work_121223/pages/homepage.dart';
import 'package:work_121223/pages/profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => ProfilePage());
              },
              icon: Icon(
                Icons.person,
                color: Colors.blue,
                size: 30,
              ))
        ],
      ),
      drawer: DrawerNav(color: Colors.deepOrange.shade300),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            elevation: 10,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'image/login.png',
                            width: 100,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Form(
                            child: Column(
                              children: [
                                customTextField(
                                  hintText: "Email",
                                  prefixIcon: const Icon(Icons.email),
                                  obscureText: false,
                                  textInputType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                customTextField(
                                  hintText: "Password",
                                  prefixIcon: const Icon(Icons.key),
                                  obscureText: false,
                                  textInputType: TextInputType.visiblePassword,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Text("ลืมรหัสผ่าน ?"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: Ink(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  'Login',
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Back to First Page ",
                                style: TextStyle(fontSize: 16),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => HomePage());
                                },
                                child: const Text(
                                  " Click Here !",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
