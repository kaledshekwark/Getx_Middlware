import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/main.dart';
import 'package:middlewaregetx/VIEW/singup.dart';



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage"),),
      body:Column(

        children: [
          Center(
            child: MaterialButton(onPressed: () {
              sharedPreferences!.setString("Role", "User");
              Get.toNamed("singup");
            },
              child: Text("Login user"),
              color: Colors.cyan,
            ),
          )
          ,SizedBox(height: 20,)
         , Center(
            child: MaterialButton(onPressed: () {
              sharedPreferences!.setString("Role", "Admin");
              Get.toNamed("Admin");
            },
              child: Text("Login Admin "),
              color: Colors.cyan,
            ),
          )
        ],
      ),

    );
  }
}
