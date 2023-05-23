import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_textfield.dart';

class MedicationPage extends StatelessWidget {
  const MedicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Medication',
            style: TextStyle(

                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              def_textfield(
                label: "Medication Name",
              ),

            ],
          ),
        )
    );
  }
}
