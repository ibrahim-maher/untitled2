import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/componants/def_button.dart';
import 'package:untitled2/componants/def_textfield.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UpratinaPage extends StatefulWidget {
  const UpratinaPage({Key? key}) : super(key: key);

  @override
  State<UpratinaPage> createState() => _UpratinaPageState();
}

class _UpratinaPageState extends State<UpratinaPage> {
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

    Future getImage() async {
      final image = await ImagePicker().getImage(source: ImageSource.gallery);
      if (image == null) return;

      // Convert XFile to an Image
      final img = File(image!.path);
    }

    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 20,
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text(
            'Analysis Ratina CT ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white.withOpacity(0.4),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      _selectDate(context);
                      _selectTime(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' ${DateFormat('yyyy-MM-dd').format(selectedDate) + selectedTime.format(context)}',
                          // Format the date string as desired
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.access_time_outlined,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/Artwork1.png",
                    height: 200, width: double.infinity),
                SizedBox(height:30,),
                InkWell(
                  onTap: () async {
                   await getImage();

                  },
                  child: defButton(
                    text: " Upload CT  ",
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
