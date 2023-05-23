import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_button.dart';

class remindertime extends StatelessWidget {
  const remindertime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/Artwork1.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              " time  to take your medication",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.medical_information_outlined,
              color: Colors.deepPurple,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  ACTRAPID 100 IU/ML",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            defButton(text: "Agree"),
            SizedBox(
              height: 10,
            ),
            TextButton(onPressed: () {}, child: Text("Agree"))
          ],
        ),
      ),
    );
  }
}
