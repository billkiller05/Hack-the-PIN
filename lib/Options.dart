import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainGame.dart';

class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  _optionsState createState() => _optionsState();
}

class _optionsState extends State<options> {

  void setAttempts() {
    if (MainGame.currentMode == 0) {
      if (MainGame.currentLevel == 0) {
        setState(() {
          MainGame.attempts = 7;
        });
      } else if (MainGame.currentLevel == 1) {
        setState(() {
          MainGame.attempts = 6;
        });
      } else if (MainGame.currentLevel == 2) {
        setState(() {
          MainGame.attempts = 5;
        });
      } else if (MainGame.currentLevel == 3) {
        setState(() {
          MainGame.attempts = 4;
        });
      }
    }else
    {if (MainGame.currentLevel == 0) {
      setState(() {
        MainGame.attempts = 8;
      });
    } else if (MainGame.currentLevel == 1) {
      setState(() {
        MainGame.attempts = 7;
      });
    } else if (MainGame.currentLevel == 2) {
      setState(() {
        MainGame.attempts = 6;
      });
    } else if (MainGame.currentLevel == 3) {
      setState(() {
        MainGame.attempts = 5;
      });
    }}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
            margin: const EdgeInsets.all(8),
            height: 360,

            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Select mode:",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    SizedBox(width: 50,),
                    Text("4 Digits",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.green[900]!),
                      value: 0,
                      groupValue: MainGame.currentMode,
                      onChanged: (int? newmode) {
                        setState(() {
                          MainGame.currentMode = newmode;
                          setAttempts();
                          MainGame.mode_six_digit_password = false;
                          MainGame.mode = "4 Digits";
                        });
                      },
                      activeColor: Colors.green[800],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 160,),
                    Text("6 Digits",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.green[900]!),
                      value: 1,
                      groupValue: MainGame.currentMode,
                      onChanged: (int? newmode) {
                        setState(() {
                          MainGame.currentMode = newmode;
                          setAttempts();
                          MainGame.mode_six_digit_password = true;
                          MainGame.mode = "6 Digits";
                        });
                      },
                      activeColor: Colors.green[800],
                    )
                  ],
                ),


                SizedBox(height: 50,),
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Text("Select level:",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    SizedBox(width: 50,),
                    Text("Easy",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    SizedBox(width: 56,),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.green[900]!),
                      value: 0,
                      groupValue: MainGame.currentLevel,
                      onChanged: (int? newlevel) {
                        setState(() {
                          MainGame.currentLevel = newlevel;
                          setAttempts();
                          MainGame.level = "Easy";
                          MainGame.winstreak = 0;
                        });
                      },
                      activeColor: Colors.green[800],
                    ),
                  ],
                ),


                Row(
                  children: [
                    const SizedBox(
                      width: 170,
                    ),
                    Text("Normal",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    SizedBox(width: 39,),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.green[900]!),
                      value: 1,
                      groupValue: MainGame.currentLevel,
                      onChanged: (int? newlevel) {
                        setState(() {
                          MainGame.currentLevel = newlevel;
                          setAttempts();
                          MainGame.level = "Normal";
                          MainGame.winstreak = 0;
                        });
                      },
                      activeColor: Colors.green[800],
                    ),
                  ],
                ),


                Row(
                  children: [
                    const SizedBox(
                      width: 170,
                    ),
                    Text("Hard",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    SizedBox(width: 56,),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.green[900]!),
                      value: 2,
                      groupValue: MainGame.currentLevel,
                      onChanged: (int? newlevel) {
                        setState(() {
                          MainGame.currentLevel = newlevel;
                          setAttempts();
                          MainGame.level = "Hard";
                          MainGame.winstreak = 0;
                        });
                      },
                      activeColor: Colors.green[800],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 170,
                    ),
                    Text("Impossible",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 17,
                            letterSpacing: 1.0,
                            fontFamily: 'myfonts')),
                    SizedBox(width: 5,),
                    Radio(
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.green[900]!),
                      value: 3,
                      groupValue: MainGame.currentLevel,
                      onChanged: (int? newlevel) {
                        setState(() {
                          MainGame.currentLevel = newlevel;
                          setAttempts();
                          MainGame.level = "Impossible";
                          MainGame.winstreak = 0;
                        });
                      },
                      activeColor: Colors.green[800],
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.pop(context,);},
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 180,
                child: Center(
                  child: Text(
                    "Return", textAlign: TextAlign.center,style: TextStyle(color: Colors.green[900], fontFamily: 'myfonts', fontSize: 38),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
