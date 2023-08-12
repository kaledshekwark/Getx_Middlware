import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/Middlware/SuperMiddlwareGetc.dart';
import 'package:middlewaregetx/VIEW/Admin.dart';
import 'package:middlewaregetx/VIEW/SuperView.dart';
import 'package:middlewaregetx/VIEW/singup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'VIEW/HomePage.dart';
import 'Middlware/MiddlwareGetx.dart';


SharedPreferences? sharedPreferences;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences=await SharedPreferences.getInstance();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      getPages: [
        GetPage(name: "/", page:()=> Homepage(),middlewares: [
          auth_Middlware(),SuperMiddlware()
        ]),
        GetPage(name: "/singup", page:()=> Singup()),
        GetPage(name: "/Admin", page: () => Admin(),)   ,
        GetPage(name: "/SuperView", page: () => SuperView(),)
      ],
    );
  }
}
