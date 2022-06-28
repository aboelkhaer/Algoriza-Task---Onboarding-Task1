import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const CustomButtom({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        bottom: 24,
        left: 16,
        right: 16,
      ),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: MaterialButton(
          color: const Color(0xFF5ABD8C),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
