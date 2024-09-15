// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_app/utility/text1.dart';

class Numberloginpage extends StatelessWidget {
  const Numberloginpage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen height
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text1(
                  content: "What's your mobile \nnumber?",
                  color: Colors.black,
                  font_size: 25,
                  font_weight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text1(
                  content: "We'll send a code to your mobile number",
                  color: Colors.black,
                  font_size: 15,
                  font_weight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
                  hintStyle: TextStyle(
                    fontSize: 15,
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
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Sign in logic
                  },
                  child: Text('Sign in'),
                ),
              ),
              SizedBox(height: screenHeight * 0.4), // Use dynamic height based on screen size
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: OutlinedButton(
                        onPressed: () {
                          // WhatsApp code logic
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 17,
                            ),
                            SizedBox(width: 10),
                            Text('Send code via WhatsApp'),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.orange, width: 2), // Outline color
                          backgroundColor: Colors.orange, // Background color
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Other options logic
                      },
                      child: Text('Other option'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
