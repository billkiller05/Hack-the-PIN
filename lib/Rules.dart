import 'package:flutter/material.dart';

class rules extends StatelessWidget {
  const rules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5,right: 5,top: 70,bottom: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Main purpose: You have to crack a password ",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Rules: Each time you type a password it is going to be displayed on console",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Console info: Console is going to help you by coloring the numbers you tried ",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Green: Each number colored with green is a correctly placed number ",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Yellow: Each number colored with yellow is a correct number but wrongly placed (try changing its position)",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Red: Each number colored with red is a wrong one (try another number)",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Attempts: You only have a few attempts , use them wisely so as to find the PIN",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Options: You may choose the difficulty and mode by visiting options",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontFamily: 'myfonts',
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.pop(context,);},
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 70),
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
