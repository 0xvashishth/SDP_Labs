import 'package:flutter/material.dart';
import 'package:lab81/pages/home.dart';
import 'package:lab81/pages/choose_location.dart';
import 'package:lab81/pages/loading.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));