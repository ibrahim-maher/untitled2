
import 'package:flutter/material.dart';

class defButton extends StatelessWidget {
  String text;

   defButton({
    super.key,
   required this.text
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: const Size(200, 50),
        primary: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onSurface: Colors.grey,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      onPressed: () {},
      child: Text(text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold)),
    );
  }
}
