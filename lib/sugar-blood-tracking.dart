import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled2/componants/def_button.dart';

class bloodtrackihnPage extends StatefulWidget {
  const bloodtrackihnPage({Key? key}) : super(key: key);

  @override
  State<bloodtrackihnPage> createState() => _bloodtrackihnPageState();
}

class _bloodtrackihnPageState extends State<bloodtrackihnPage> {
  @override
  List<String> selectedItems = [];
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];


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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        elevation: 20,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Sugar Blood Tracking',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                //date and time picker

                const SizedBox(height: 20.0),

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
                        offset: const Offset(0, 3), // changes position of shadow
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
                    onTap: (){
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
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Add your blood sugar Result',
                  style: TextStyle(
                    fontSize: 25,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                Container(
                  width: 150,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
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
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '000',
                      suffixText: 'mg/dl',

                      suffixStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      mainAxisSpacing: 8.0, // Spacing between rows
                      crossAxisSpacing: 8.0, // Spacing between columns
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final item = items[index];
                      final isSelected = selectedItems.contains(item);

                      return  Container(
                        height: 60,
                          decoration: BoxDecoration(
                              color: isSelected ?  Theme.of(context).primaryColor : Colors.white,
                              boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ]
                          ),
                          alignment: Alignment.center,
                          child:GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelected) {
                                  selectedItems.remove(item);
                                } else {
                                  selectedItems.add(item);
                                }
                              });
                            },
                            child: Text(
                            item,
                            style: TextStyle(fontSize: 16.0,color: isSelected ? Colors.white: Theme.of(context).primaryColor ,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                defButton(
                  text: 'save',
                )
              ],
            )),
      ),
    );
  }
}
