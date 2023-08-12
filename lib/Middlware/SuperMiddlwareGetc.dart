import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:middlewaregetx/main.dart';

class SuperMiddlware extends GetMiddleware {

  @override
  int? get priority=>2;

bool myvar=true;

  @override
  RouteSettings? redirect (String? route)
  {

    if(myvar==true) return RouteSettings(name:"SuperView");
  }

}
