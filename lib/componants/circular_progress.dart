// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyCircularProgress extends StatelessWidget {
  final double progressValue;

  Color color;

  String icon;

  double height = 200;

  double width = 200;

  MyCircularProgress({
    required this.progressValue,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20,),
      padding: EdgeInsets.all(10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1), // Shadow color
            spreadRadius: 7, // Spread radius
            blurRadius: 7, // Blur radius
            offset: Offset(0, 3), // Offset in the x and y direction
          ),
        ],
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 20),
            height: 200-20,
            width: 200,
            child: CircularProgressIndicator(
              value: 0.2,
              // Set the progress value here
              strokeWidth: 20,
              // Customize the stroke width as needed
              backgroundColor: color.withOpacity(0.2),
              // Customize the background color as needed
              valueColor: AlwaysStoppedAnimation<Color>(
                  color), // Customize the progress color as needed
            ),
          ),
          Positioned(
            top: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Text ",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(icon, width: 100, height: 100)),
                Text(
                  '${(progressValue * 100).toString()}',
                  // Display the progress value as a percentage
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
