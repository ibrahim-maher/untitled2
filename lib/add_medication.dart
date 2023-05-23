import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_button.dart';
import 'package:untitled2/componants/def_textfield.dart';

class AddMedicationPage extends StatefulWidget {
  const AddMedicationPage({Key? key}) : super(key: key);

  @override
  State<AddMedicationPage> createState() => _AddMedicationPageState();
}

class _AddMedicationPageState extends State<AddMedicationPage> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Custom Medication\n /Supplements',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
               Image.asset("assets/images/mental-health.png",height: 500,
                 width: double.infinity,),
                SizedBox(height: 20,),
                defButton(text: "  +  Add Medication  "),
              ],
            ),
          ),
        ));
  }
}
