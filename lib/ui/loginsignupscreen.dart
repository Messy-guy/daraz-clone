// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_app/utility/text1.dart';

class loginsignupscreen extends StatelessWidget {
  const loginsignupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: Column(
        children: [
          Center(
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
                Text1(content: 'Discover the endless possibilities', 
                color: const Color.fromARGB(255, 40, 18, 239), 
                font_size: 12, font_weight:FontWeight.normal),
          
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:30,right: 30,),
                      child: ElevatedButton(onPressed:() {
                        
                      }, 
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                        ),
                      ),
                      
                      child: 
                       Row(
                        children: [
                          Icon(Icons.facebook_rounded,
                          color: const Color.fromARGB(255, 24, 103, 168),),
                          SizedBox(width: 60),
                          Text1(content: 'Log in with facebook', 
                          color: const Color.fromARGB(214, 72, 72, 72), 
                          font_size: 12, font_weight: FontWeight.normal)
                        ],
                       )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                      child: ElevatedButton(onPressed:() {
                        
                      }, 
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)
                        ),
                      ),
                      
                      child: 
                       Row(
                        children: [
                           FaIcon(
          FontAwesomeIcons.google,
          size: 22,
        ),
                          SizedBox(width: 60),
                          Text1(content: 'Log in with google', 
                          color: const Color.fromARGB(214, 72, 72, 72), 
                          font_size: 12, font_weight: FontWeight.normal)
                        ],
                       )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60,top: 10,right: 60),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.search,size: 16,color: Colors.blue,),
                              Text1(content: 'via password', color: Colors.blue, 
                              font_size: 11, font_weight: FontWeight.normal)
                            ],
                          ),
                          SizedBox(width: 60),
                           Row(
                            children: [
                              Icon(Icons.mobile_friendly,size: 16,color: Colors.blue,),
                              Text1(content: 'Mobile Number', color: Colors.blue, 
                              font_size: 11, font_weight: FontWeight.normal)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 300,),
          Column(
            children: [
              Text1(content: "Haven't Signed Up Yet?", color: const Color.fromARGB(214, 72, 72, 72), 
              font_size: 11, font_weight: FontWeight.normal),
              TextButton(onPressed:() {
                
              }, child:Text1(content: "Sign Up Now", color: Colors.blue, 
              font_size: 11, font_weight: FontWeight.normal) )
            ],
          )
        ],
      ),
    );
  }
}
