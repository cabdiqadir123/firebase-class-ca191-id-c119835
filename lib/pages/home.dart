// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_import, prefer_const_constructors, unused_import, implementation_imports

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mylogin_191/pages/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final User = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: signout, icon: Icon(Icons.logout_outlined))
      ]),
      // body: StreamBuilder(stream: FirebaseAuth,),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Logged User is :' + User.email!,
            style: TextStyle(fontSize: 14),
          ),
        ],
      )),
    );
  }
}
