import 'package:flutter/material.dart';

class servicesCard extends StatelessWidget {
  const servicesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(25),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              // Shadow color
              spreadRadius: 2,
              // Spread radius
              blurRadius: 2,
              // Blur radius
              offset: Offset(0, 1), // Of
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/icons/running.jpg",
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Running",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
