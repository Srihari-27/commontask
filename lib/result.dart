import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game.dart';
class Result extends StatelessWidget {
  int? a;

  Result({required this.a});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //color: Colors.blueGrey,
                  child:Text((a==2||a==1)?"PLAYER $a WON!!!!!!" : "DRAW GAME",
                    style: TextStyle(fontSize: 12,
                        color: Colors.brown
                      //fontFamily: 'lemon_milk'
                    ),

                  ),
                ),

              ),
            ),
            GestureDetector(
              onTap :(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Game()));
              },
              child:
              Container(
                color: Colors.blue[300],
                child: Text('RESTART'),
              ),

            ),


          ],

        ),
      ),

    );
  }
}


