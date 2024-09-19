import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:multiple_choices_app/pages/subpages/first_subpage.dart';
import 'package:multiple_choices_app/pages/subpages/second_subpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var firstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEFF3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 50,
            child: Column(
              children: [
                firstPage ? const FirstSubpage() : const SecondSubpage(),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      firstPage = !firstPage;
                    });
                  },
                  child: const Text("Change page"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
