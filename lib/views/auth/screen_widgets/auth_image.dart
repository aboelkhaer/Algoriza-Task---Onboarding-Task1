import 'package:flutter/material.dart';

class AuthImage extends StatelessWidget {
  const AuthImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: const Image(
        image: ExactAssetImage('assets/images/authpic.png'),
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
