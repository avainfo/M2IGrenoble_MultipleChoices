import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var progression = 1;
  var clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEFF3),
      body: SafeArea(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
              child: Column(
                children: [
                  const Text(
                    "What kind of insurance do you need?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF2B2B2F),
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        clicked = !clicked;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 10)
                          )
                        ]
                      ),
                      child: Row(
                        children: [
                          AnimatedContainer(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: clicked ? const Color(0xFF601AE0) : const Color(0xFFEDEFF3),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeInOut,
                          ),
                          const Text(
                            "Home",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2B2B2F),
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
