import 'package:flutter/material.dart';
import 'package:multiple_choices_app/components/selectable_option.dart';
import 'package:multiple_choices_app/pages/subpages/first_subpage.dart';
import 'package:multiple_choices_app/pages/subpages/second_subpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var progression = 1;
  Widget subpage = FirstSubpage();

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
              subpage,
              ElevatedButton(onPressed: () {
                setState(() {
                  subpage = SecondSubpage();
                });
              }, child: Text("Coucou"))
            ],
          ),
        ),
      ),
    );
  }
}
