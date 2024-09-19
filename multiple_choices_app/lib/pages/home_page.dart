import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multiple_choices_app/pages/subpages/first_subpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var progression = 1;
  Widget subpage = const FirstSubpage();
  var soins = ["Cheveux", "Peau", "soins digestifs"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEFF3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Get",
                        style: TextStyle(
                          color: Color(0xFF7322F5),
                        ),
                      ),
                      TextSpan(
                        text: "Surance",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 5,
                decoration: BoxDecoration(
                  color: const Color(0xFFCEC1E9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width - 40) / 5 * progression,
                      height: 5,
                      decoration: BoxDecoration(
                        color: const Color(0xFF601AE0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              // subpage,
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       subpage = const SecondSubpage();
              //     });
              //   },
              //   child: const Text("Coucou"),
              // ),

              //Boutons personnalisé 1
              GestureDetector(
                onTap: () {
                  setState(() {
                    progression = 2;
                  });
                  print("TEEEST");
                  if(kDebugMode) log("test");
                },
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.green,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.ac_unit),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        for (var e in soins)
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: MediaQuery.of(context).size.width / 2 - 40,
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                e,
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                      ],
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