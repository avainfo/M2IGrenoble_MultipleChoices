import 'package:flutter/material.dart';

class SelectableOption extends StatefulWidget {
  final String title;

  const SelectableOption(this.title, {super.key});

  @override
  State<SelectableOption> createState() => _SelectableOptionState();
}

class _SelectableOptionState extends State<SelectableOption> {
  var clicked = false;
  var padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
          padding = padding == 50 ? 20.0 : 50;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: 65,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, spreadRadius: 2, offset: Offset(0, 10))]),
        child: Row(
          children: [
            AnimatedContainer(
              margin: EdgeInsets.fromLTRB(padding, 0, 20, 0),
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: clicked ? const Color(0xFF601AE0) : const Color(0xFFEDEFF3),
                borderRadius: BorderRadius.circular(50),
              ),
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeInOut,
            ),
            Text(
              widget.title,
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
    );
  }
}
