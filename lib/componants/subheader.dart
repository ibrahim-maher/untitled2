import 'package:flutter/material.dart';

class subHeader extends StatelessWidget {
  String text;


  final VoidCallback onPressed;

  subHeader({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            "See all",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primaryVariant,
                fontSize: 16,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
