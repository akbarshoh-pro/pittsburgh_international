import 'package:flutter/material.dart';
import 'package:pittsburgh_international/app/app_init.dart';

import 'app/my_app.dart';

void main() async {
  await AppInit.init();
  runApp(const MyApp());
}


