import 'package:flutter/material.dart';

import '../../components/selectable_option.dart';

class FirstSubpage extends StatefulWidget {
  const FirstSubpage({super.key});

  @override
  State<FirstSubpage> createState() => _FirstSubpageState();
}

class _FirstSubpageState extends State<FirstSubpage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          Text(
            "What kind of insurance do you need?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF2B2B2F),
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 50),
          SelectableOption("Home"),
          SizedBox(height: 25),
          SelectableOption("Auto"),
          SizedBox(height: 25),
          SelectableOption("Motorcycle"),
          SizedBox(height: 25),
          SelectableOption("Renters"),
        ],
      ),
    );
  }
}
