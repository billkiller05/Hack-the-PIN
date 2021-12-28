import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainGame.dart';
import 'Rules.dart';
import 'Options.dart';

void main() {
  return runApp(MaterialApp(
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'myfonts',),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background_image.jpeg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,),
              child: Center(
                child: Text(
                  "Hack the PIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 44,
                      color: Colors.green[800],
                      letterSpacing: 2,
                      fontFamily: 'myfonts'),
                ),
              ),
            ),
            const SizedBox(
              height: 180,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainGame()));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 48, right: 48),
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                    border: Border.all(width: 2, color: Colors.green[900]!)),
                child: Center(
                  child: Text(
                    "Play Game",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.green[800],
                        letterSpacing: 2,
                        fontFamily: 'myfonts'),
                  ),
                ),
              ),
            ),


            const SizedBox(
              height: 30,
            ),


            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const rules()));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 48, right: 48),
                height: 64,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                    border: Border.all(width: 2, color: Colors.green[900]!)),
                child: Center(
                  child: Text(
                    "About Game",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.green[800],
                        letterSpacing: 2,
                        fontFamily: 'myfonts'),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const options()));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 48, right: 48),
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                    color: Colors.black,
                    border: Border.all(width: 2, color: Colors.green[900]!)),
                child: Center(
                  child: Text(
                    "Options",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.green[800],
                        letterSpacing: 2,
                        fontFamily: 'myfonts'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
