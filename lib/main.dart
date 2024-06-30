import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game.dart';
import 'package:tic_tac_toe/home.dart';
import 'package:tic_tac_toe/result.dart';

void main()  => runApp(MaterialApp(
  //home: Game()
    initialRoute:'/home',
    routes:{'/result':(context) => Result(a:1),
      '/home': (context)  => Home(),
      '/game': (context) =>Game(),
    }
));
