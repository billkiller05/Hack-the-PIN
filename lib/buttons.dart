import 'package:flutter/material.dart';


Widget button(String buttontext, Color? buttoncolor) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120),
        border: Border.all(width: 3, color: Colors.black),
        color: buttoncolor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 2,
            offset: Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      height: 65,
      width: 65,
      child: Center(
        child: Text(
          buttontext,
          style: const TextStyle(color: Colors.black, fontSize: 26, fontFamily: 'myfonts'),
        ),
      ),
    ),
  );
}


