import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color buttoncolor;
  final Color textcolor;
  final Gradient? gradient;
  final void Function()? onTap;

  const MyButton(
      {super.key,
      required this.text,
      required this.buttoncolor,
      required this.onTap,
      required this.gradient,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = buttoncolor ?? Colors.blue;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: gradient != null ? null : backgroundColor,
            gradient: gradient,
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: const Color(0xFF2743FD))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: textcolor, fontSize: 22),
            ),
            const Icon(
              Icons.arrow_forward_sharp,
              color: Color(0xFF2743FD),
            )
          ],
        ),
      ),
    );
  }
}
