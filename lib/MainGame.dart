import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'dart:math';

class MainGame extends StatefulWidget {
  const MainGame({Key? key}) : super(key: key);

  static bool mode_six_digit_password = false;
  static int? currentMode = 0;
  static int? currentLevel = 1;

  static int attempts = 6;
  static int winstreak = 0;

  static String mode = "4 Digits";
  static String level = "Normal";

  @override
  _MainGameState createState() => _MainGameState();
}

class _MainGameState extends State<MainGame> {
  bool mode_six_digit_password = MainGame.mode_six_digit_password;

  int attempts = MainGame.attempts;
  int winstreak = MainGame.winstreak;

  String mode = MainGame.mode;
  String level = MainGame.level;

  String? Pin_num1;
  String? Pin_num2;
  String? Pin_num3;
  String? Pin_num4;
  String? Pin_num5;
  String? Pin_num6;

  String num1 = "";
  String num2 = "";
  String num3 = "";
  String num4 = "";
  String num5 = "";
  String num6 = "";

  void creat_pin() {
    Random rng = Random();
    if (mode_six_digit_password == false) {
      setState(() {
        Pin_num1 = rng.nextInt(10).toString();
        Pin_num2 = rng.nextInt(10).toString();
        Pin_num3 = rng.nextInt(10).toString();
        Pin_num4 = rng.nextInt(10).toString();
      });
    } else {
      setState(() {
        Pin_num1 = rng.nextInt(10).toString();
        Pin_num2 = rng.nextInt(10).toString();
        Pin_num3 = rng.nextInt(10).toString();
        Pin_num4 = rng.nextInt(10).toString();
        Pin_num5 = rng.nextInt(10).toString();
        Pin_num6 = rng.nextInt(10).toString();
      });
    }
  }

  _MainGameState() {
    Random rng = Random();
    if (mode_six_digit_password == false) {
      Pin_num1 = rng.nextInt(10).toString();
      Pin_num2 = rng.nextInt(10).toString();
      Pin_num3 = rng.nextInt(10).toString();
      Pin_num4 = rng.nextInt(10).toString();
    } else {
      Pin_num1 = rng.nextInt(10).toString();
      Pin_num2 = rng.nextInt(10).toString();
      Pin_num3 = rng.nextInt(10).toString();
      Pin_num4 = rng.nextInt(10).toString();
      Pin_num5 = rng.nextInt(10).toString();
      Pin_num6 = rng.nextInt(10).toString();
    }
  }

  void func_for_delbutton() {
    setState(() {
      num1 = "";
      num2 = "";
      num3 = "";
      num4 = "";
      num5 = "";
      num6 = "";
    });
  }

  void func_for_button(String buttontext) {
    if (mode_six_digit_password == false) {
      setState(() {
        if (num1 == "") {
          num1 = buttontext;
        } else if (num2 == "") {
          num2 = buttontext;
        } else if (num3 == "") {
          num3 = buttontext;
        } else if (num4 == "") {
          num4 = buttontext;
        }
      });
    } else {
      setState(() {
        if (num1 == "") {
          num1 = buttontext;
        } else if (num2 == "") {
          num2 = buttontext;
        } else if (num3 == "") {
          num3 = buttontext;
        } else if (num4 == "") {
          num4 = buttontext;
        } else if (num5 == "") {
          num5 = buttontext;
        } else if (num6 == "") {
          num6 = buttontext;
        }
      });
    }
  }

  void clear_tries() {
    tries.clear();
  }

  void setAttempts() {
    if (MainGame.currentMode == 0) {
      if (MainGame.currentLevel == 0) {
        setState(() {
          attempts = 7;
        });
      } else if (MainGame.currentLevel == 1) {
        setState(() {
          attempts = 6;
        });
      } else if (MainGame.currentLevel == 2) {
        setState(() {
          attempts = 5;
        });
      } else if (MainGame.currentLevel == 3) {
        setState(() {
          attempts = 4;
        });
      }
    } else {
      if (MainGame.currentLevel == 0) {
        setState(() {
          attempts = 8;
        });
      } else if (MainGame.currentLevel == 1) {
        setState(() {
          attempts = 7;
        });
      } else if (MainGame.currentLevel == 2) {
        setState(() {
          attempts = 6;
        });
      } else if (MainGame.currentLevel == 3) {
        setState(() {
          attempts = 5;
        });
      }
    }
  }

  Color? find_color1(String? numx, String? PinNumx, String? PinNumy,
      String? PinNumz, String? PinNumw) {
    if (numx == PinNumx) {
      return Colors.green[900];
    } else if (numx == PinNumy || numx == PinNumz || numx == PinNumw) {
      return Colors.yellow[700];
    } else {
      return Colors.red[900];
    }
  }

  Color? find_color2(String? numx, String? PinNumx, String? PinNumy,
      String? PinNumz, String? PinNumw, String? PinNumi, String? PinNumo) {
    if (numx == PinNumx) {
      return Colors.green[900];
    } else if (numx == PinNumy ||
        numx == PinNumz ||
        numx == PinNumw ||
        numx == PinNumi ||
        numx == PinNumo) {
      return Colors.yellow[700];
    } else {
      return Colors.red[900];
    }
  }

  Widget color_numbers1(String? num1, String? num2, String? num3, String? num4,
      Color? color1, Color? color2, Color? color3, Color? color4) {
    String numberOfAttempt = (tries.length + 1).toString();
    return Row(
      children: [
        Text("Invalid input " + numberOfAttempt + ":     ",
            style: TextStyle(
                color: Colors.green[900],
                fontSize: 17,
                letterSpacing: 1.0,
                fontFamily: 'myfonts')),
        Text(
          num1!,
          style: TextStyle(color: color1, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num2!,
          style: TextStyle(color: color2, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num3!,
          style: TextStyle(color: color3, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num4!,
          style: TextStyle(color: color4, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 10,
        )
      ],
    );
  }

  Widget color_numbers2(
      String? num1,
      String? num2,
      String? num3,
      String? num4,
      String? num5,
      String? num6,
      Color? color1,
      Color? color2,
      Color? color3,
      Color? color4,
      Color? color5,
      Color? color6) {
    String numberOfAttempt = (tries.length + 1).toString();
    return Row(
      children: [
        Text("Invalid input " + numberOfAttempt + ":     ",
            style: TextStyle(
                color: Colors.green[900],
                fontSize: 17,
                letterSpacing: 1.0,
                fontFamily: 'myfonts')),
        Text(
          num1!,
          style: TextStyle(color: color1, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num2!,
          style: TextStyle(color: color2, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num3!,
          style: TextStyle(color: color3, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num4!,
          style: TextStyle(color: color4, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num5!,
          style: TextStyle(color: color5, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 0.8,
        ),
        Text(
          num6!,
          style: TextStyle(color: color6, fontSize: 18, fontFamily: 'myfonts'),
        ),
        const SizedBox.square(
          dimension: 10,
        )
      ],
    );
  }

  void func_for_enterbutton(String? num1, String? num2, String? num3,
      String? num4, String? num5, String? num6, List<Widget> tries) {

    bool all_numbers_pressed = true;

    // For four digit pin mode
    if (mode_six_digit_password == false) {
      if (num1 != "" && num2 != "" && num3 != "" && num4 != "") {
        if (num1 == Pin_num1 &&
            num2 == Pin_num2 &&
            num3 == Pin_num3 &&
            num4 == Pin_num4 &&
            attempts > 0) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.black,
                  title: const Text(
                    "*** PIN HACKED ***",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19, fontFamily: 'myfonts'),
                  ),
                  titleTextStyle: TextStyle(
                      color: Colors.green[900],
                      fontSize: 15.0,
                      fontFamily: 'myfonts'),
                  actions: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green[900]!)),
                      child: CupertinoDialogAction(
                          child: Text("Continue",
                              style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize: 18.0,
                                  fontFamily: 'myfonts')),
                          onPressed: () {
                            setState(() {
                              clear_tries();
                              setAttempts();
                              winstreak++;
                              creat_pin();
                            });
                            Navigator.pop(context);
                            func_for_delbutton();
                          }),
                    )
                  ],
                );
              });
          return;
        } else {
          Color? color1 =
              find_color1(num1, Pin_num1, Pin_num2, Pin_num3, Pin_num4);
          Color? color2 =
              find_color1(num2, Pin_num2, Pin_num1, Pin_num3, Pin_num4);
          Color? color3 =
              find_color1(num3, Pin_num3, Pin_num2, Pin_num1, Pin_num4);
          Color? color4 =
              find_color1(num4, Pin_num4, Pin_num2, Pin_num3, Pin_num1);

          setState(() {
            tries.add(color_numbers1(
                num1, num2, num3, num4, color1, color2, color3, color4));
          });
        }
      } else {
        setState(() {
          all_numbers_pressed = false;
        });
      }
    }

    // For six digit pin mode

    else {
      if (num1 != "" &&
          num2 != "" &&
          num3 != "" &&
          num4 != "" &&
          num5 != "" &&
          num6 != "") {
        if (num1 == Pin_num1 &&
            num2 == Pin_num2 &&
            num3 == Pin_num3 &&
            num4 == Pin_num4 &&
            num5 == Pin_num5 &&
            num6 == Pin_num6 &&
            attempts > 0) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.black,
                  title: const Text(
                    "*** PIN HACKED ***",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 19, fontFamily: 'myfonts'),
                  ),
                  titleTextStyle: TextStyle(
                      color: Colors.green[900],
                      fontSize: 15.0,
                      fontFamily: 'myfonts'),
                  actions: [
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green[900]!)),
                      child: CupertinoDialogAction(
                          child: Text("Continue",
                              style: TextStyle(
                                  color: Colors.green[900],
                                  fontSize: 18.0,
                                  fontFamily: 'myfonts')),
                          onPressed: () {
                            setState(() {
                              clear_tries();
                              setAttempts();
                              winstreak++;
                              creat_pin();
                            });
                            Navigator.pop(context);
                            func_for_delbutton();
                          }),
                    )
                  ],
                );
              });
          return;
        } else {
          Color? color1 = find_color2(
              num1, Pin_num1, Pin_num2, Pin_num3, Pin_num4, Pin_num5, Pin_num6);
          Color? color2 = find_color2(
              num2, Pin_num2, Pin_num1, Pin_num3, Pin_num4, Pin_num5, Pin_num6);
          Color? color3 = find_color2(
              num3, Pin_num3, Pin_num2, Pin_num1, Pin_num4, Pin_num5, Pin_num6);
          Color? color4 = find_color2(
              num4, Pin_num4, Pin_num2, Pin_num3, Pin_num1, Pin_num5, Pin_num6);
          Color? color5 = find_color2(
              num5, Pin_num5, Pin_num2, Pin_num3, Pin_num4, Pin_num1, Pin_num6);
          Color? color6 = find_color2(
              num6, Pin_num6, Pin_num2, Pin_num3, Pin_num4, Pin_num5, Pin_num1);

          setState(() {
            tries.add(color_numbers2(num1, num2, num3, num4, num5, num6, color1,
                color2, color3, color4, color5, color6));
          });
        }
      } else {
        setState(() {
          all_numbers_pressed = false;
        });
      }
    }

    if (all_numbers_pressed == true) {
      func_for_delbutton();
      if (attempts - 1 == 0) {
        func_for_delbutton();
        showDialog(
            context: context,
            builder: (context) {
              attempts--;
              return AlertDialog(
                backgroundColor: Colors.black,
                title: const Text(
                  "ERROR :  NO ATTEMPTS LEFT !!! ",
                  style: TextStyle(fontSize: 15, fontFamily: 'myfonts'),
                ),
                content: mode_six_digit_password == true
                    ? Text(
                        "PIN WAS :   $Pin_num1$Pin_num2$Pin_num3$Pin_num4$Pin_num5$Pin_num6 ",
                        style: TextStyle(
                            color: Colors.red[900], fontFamily: 'myfonts'),
                      )
                    : Text(
                        "PIN WAS :   $Pin_num1$Pin_num2$Pin_num3$Pin_num4 ",
                        style: TextStyle(
                            color: Colors.red[900], fontFamily: 'myfonts'),
                      ),
                titleTextStyle: TextStyle(
                    color: Colors.red[900],
                    fontSize: 25.0,
                    fontFamily: 'myfonts'),
                actions: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red[900]!)),
                    margin: const EdgeInsets.all(20.0),
                    child: CupertinoDialogAction(
                        child: Text(
                          "Play again",
                          style: TextStyle(
                              color: Colors.red[900],
                              fontSize: 15.0,
                              fontFamily: 'myfonts'),
                        ),
                        onPressed: () {
                          setState(() {
                            clear_tries();
                            winstreak = 0;
                            setAttempts();
                            func_for_delbutton();
                            creat_pin();
                          });
                          Navigator.pop(context);
                        }),
                  )
                ],
              );
            });
      } else if (attempts <= 0) {
        setState(() {
          clear_tries();
          winstreak = 0;
          setAttempts();
          func_for_delbutton();
          creat_pin();
        });
      } else {
        setState(() {
          attempts--;
        });
      }
    }
  }

  List<Widget> tries = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(children: [
        // winstreak & attempts
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    width: 135,
                    height: 30,
                    color: Colors.black,
                    child: Text(
                      "Winstreak: $winstreak",
                      style: TextStyle(
                          color: Colors.green[900],
                          letterSpacing: 2.0,
                          fontFamily: 'myfonts',
                          fontSize: 17),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    width: 135,
                    height: 30,
                    color: Colors.black,
                    child: Text(
                      "Attempts: $attempts",
                      style: TextStyle(
                          color: Colors.green[900],
                          letterSpacing: 2.0,
                          fontFamily: 'myfonts',
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //console
        Expanded(
          flex: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5),
                child: ListView.builder(
                    itemCount: tries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return tries[index];
                    }),
              ),
            ),
          ),
        ),

        // pressed numbers
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      num1,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
                          fontFamily: 'myfonts'),
                    ),
                    Text(
                      num2,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
                          fontFamily: 'myfonts'),
                    ),
                    Text(
                      num3,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
                          fontFamily: 'myfonts'),
                    ),
                    Text(
                      num4,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
                          fontFamily: 'myfonts'),
                    ),
                    Text(
                      num5,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
                          fontFamily: 'myfonts'),
                    ),
                    Text(
                      num6,
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.green[900],
                          fontFamily: 'myfonts'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        // buttons
        Expanded(
          flex: 6,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: button("1", Colors.grey[800]),
                      onTap: () {
                        func_for_button("1");
                      },
                    ),
                    GestureDetector(
                      child: button("2", Colors.grey[800]),
                      onTap: () {
                        func_for_button("2");
                      },
                    ),
                    GestureDetector(
                      child: button("3", Colors.grey[800]),
                      onTap: () {
                        func_for_button("3");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 13, 28.0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: button("4", Colors.grey[800]),
                      onTap: () {
                        func_for_button("4");
                      },
                    ),
                    GestureDetector(
                      child: button("5", Colors.grey[800]),
                      onTap: () {
                        func_for_button("5");
                      },
                    ),
                    GestureDetector(
                      child: button("6", Colors.grey[800]),
                      onTap: () {
                        func_for_button("6");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 0, 28.0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: button("7", Colors.grey[800]),
                      onTap: () {
                        func_for_button("7");
                      },
                    ),
                    GestureDetector(
                      child: button("8", Colors.grey[800]),
                      onTap: () {
                        func_for_button("8");
                      },
                    ),
                    GestureDetector(
                      child: button("9", Colors.grey[800]),
                      onTap: () {
                        func_for_button("9");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(28.0, 0, 28.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: button("Del", Colors.red[900]),
                      onTap: () {
                        func_for_delbutton();
                      },
                    ),
                    GestureDetector(
                      child: button("0", Colors.grey[800]),
                      onTap: () {
                        func_for_button("0");
                      },
                    ),
                    GestureDetector(
                      child: button("Enter", Colors.green[900]),
                      onTap: () {
                        func_for_enterbutton(
                            num1, num2, num3, num4, num5, num6, tries);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 22,
                    color: Colors.black,
                    child: Text(
                      "Mode: $mode",
                      style: TextStyle(
                          color: Colors.green[900],
                          letterSpacing: 2.0,
                          fontFamily: 'myfonts',
                          fontSize: 17),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    alignment: Alignment.center,
                    width: 166,
                    height: 22,
                    color: Colors.black,
                    child: Text(
                      "Level: $level",
                      style: TextStyle(
                          color: Colors.green[900],
                          letterSpacing: 2.0,
                          fontFamily: 'myfonts',
                          fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
