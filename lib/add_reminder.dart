import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'componants/def_button.dart';
import 'componants/def_textfield.dart';
import 'package:intl/intl.dart';

class AddReminderPage extends StatefulWidget {
  const AddReminderPage({Key? key}) : super(key: key);

  @override
  State<AddReminderPage> createState() => _AddReminderPageState();
}

class _AddReminderPageState extends State<AddReminderPage> {
  List<Map> midecations = [
    {
      'index': '0',
      'text': 'Medication 1',
      "time": '12:00 PM',
    },
    {
      'index': '1',
      'text': 'Medication 2',
      "time": '11:00 PM',
    },
    {
      'index': '2',
      'text': 'Medication 2',
      "time": '10:00 PM',
    },
  ];

  TextEditingController dateController = TextEditingController();
  TextEditingController TimeController = TextEditingController();
  TextEditingController _medicationController = TextEditingController();
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    _medicationController = TextEditingController();
    _selectedTime = TimeOfDay.now();
  }

  @override
  void dispose() {
    _medicationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        elevation: 20,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Add reminder',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications_active,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Today",
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return micationListTile(
                      time: midecations[index]['time'],
                      text: midecations[index]['text'],
                    );
                  },
                  itemCount: midecations.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            controller: _medicationController,
                            decoration: InputDecoration(
                              hintText: "Medication name",
                              hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(

                              readOnly: true,
                            onTap: () {
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2050),
                              ).then((value) {
                                dateController.text =
                                    DateFormat.yMMMd().format(value!);
                              });
                            },

                            controller: dateController,
                            decoration: InputDecoration(
                              hintText: "Date",
                              border: InputBorder.none,

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(

                            readOnly: true,
                            onTap: () {
                              showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              ).then((value) {
                                TimeController.text =
                                    value!.format(context).toString();
                              });
                            },

                            controller: TimeController,
                            decoration: InputDecoration(
                              hintText: "time",
                              border: InputBorder.none,

                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(onPressed: () {}, child: Text("Add"))
                      ],
                    ),
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class micationListTile extends StatelessWidget {
  String text;

  micationListTile({
    super.key,
    required this.time,
    required this.text,
  });

  final time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          time as String,
          style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
