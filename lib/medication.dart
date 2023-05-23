import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_button.dart';
import 'package:untitled2/componants/def_textfield.dart';

class MedicationPage extends StatefulWidget {
  const MedicationPage({Key? key}) : super(key: key);

  @override
  State<MedicationPage> createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> {
  late var dropdownValue1 = 'One';
  late var dropdownValue2 = 'One';

  @override
  Widget build(BuildContext context) {

    DateTime selectedDate = DateTime.now();
    TimeOfDay selectedTime = TimeOfDay.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(2025),
      );
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

    Future<void> _selectTime(BuildContext context) async {
      final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );
      if (picked != null && picked != selectedTime)
        setState(() {
          selectedTime = picked;
        });
    }


    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add Medication',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
          child: Column(
            children: [
              def_textfield(
                label: "Medication Name",
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: double.infinity,
                child: DropdownButton(
                  value: dropdownValue1,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text('One'),
                      value: 'One',
                    ),
                    DropdownMenuItem(
                      child: Text('Two'),
                      value: 'Two',
                    ),
                    DropdownMenuItem(
                      child: Text('Three'),
                      value: 'Three',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropdownValue1 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                width: double.infinity,
                child: DropdownButton(
                  value: dropdownValue2,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text('One'),
                      value: 'One',
                    ),
                    DropdownMenuItem(
                      child: Text('Two'),
                      value: 'Two',
                    ),
                    DropdownMenuItem(
                      child: Text('Three'),
                      value: 'Three',
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      dropdownValue2 = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              defButton(text: "Save"),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  _selectDate(context);
                  _selectTime(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                      Icon(
                        Icons.add_alarm,
                        color: Theme.of(context).primaryColor.withOpacity(0.7),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add Reminder",
                      style: TextStyle(
                        fontSize: 20,
                          color: Theme.of(context).primaryColor.withOpacity(0.7)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
