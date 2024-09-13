// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_app/utility/text1.dart';

class Numbersignupscreen extends StatelessWidget {
  const Numbersignupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: GestureDetector(
        onTap: () {
          // Dismiss the keyboard when tapping outside
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView( // Added to handle keyboard overflow
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Image.asset(
                    'assets/background/logo.png',
                    height: 100, // Optional: adjusts the image to fit the space
                  ),
                ),
                Text1(
                  content: 'Discover the endless possibilities',
                  color: const Color.fromARGB(255, 40, 18, 239),
                  font_size: 12,
                  font_weight: FontWeight.normal,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Sign Up With Phone Number',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w200,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                  child: Row(
                    children: [
                      Text(
                        '---------------------------',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                      SizedBox(width: 5),
                      Text('or'),
                      SizedBox(width: 3),
                      Text(
                        '----------------------------',
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 20, 100, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blueAccent,
                        size: 29,
                      ),
                      SizedBox(width: 40),
                      FaIcon(
                        FontAwesomeIcons.google,
                        size: 22,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text1(
                  content: "Haven't Signed Up Yet?",
                  color: const Color.fromARGB(214, 72, 72, 72),
                  font_size: 11,
                  font_weight: FontWeight.normal,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text1(
                    content: "Sign Up Now",
                    color: Colors.blue,
                    font_size: 11,
                    font_weight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
