import 'package:flutter/material.dart';

import '../../components/selectable_option.dart';

class SecondSubpage extends StatefulWidget {
  const SecondSubpage({super.key});

  @override
  State<SecondSubpage> createState() => _SecondSubpageState();
}

class _SecondSubpageState extends State<SecondSubpage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          Text(
            "Coucou",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF2B2B2F),
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 50),
          SelectableOption("Coucou"),
          SizedBox(height: 25),
          SelectableOption("Coucou"),
          SizedBox(height: 25),
          SelectableOption("Coucou"),
          SizedBox(height: 25),
          SelectableOption("Coucou"),
        ],
      ),
    );
  }
}
