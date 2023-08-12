import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/main.dart';

class auth_Middlware extends GetMiddleware {



  @override
  int? get priority=>1;
  @override
  RouteSettings? redirect (String? route)
  {

    if(sharedPreferences!.getString("Role")=="User")
      return RouteSettings(name:"/");
    if(sharedPreferences!.getString("Role")=="Admin")
    return RouteSettings(name:"/Admin");


  }

}
