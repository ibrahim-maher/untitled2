import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'componants/def_textfield.dart';

class TellUsPatientPage extends StatefulWidget {
  const TellUsPatientPage({Key? key}) : super(key: key);

  @override
  State<TellUsPatientPage> createState() => _TellUsPatientPageState();
}

class _TellUsPatientPageState extends State<TellUsPatientPage> {
  bool _isChecked = false;

  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
      // Perform any actions or updates based on the selected date here
    }
  }

  String _selectedWeight = '50 kg';
  List<String> _weights = [
    '50 kg',
    '60 kg',
    '70 kg',
    '80 kg',
    '90 kg',
    '100 kg',
  ];

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
          'Tell Us About Yourself',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1), // Shadow color
                        spreadRadius: 7, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: const Offset(
                            0, 3), // Offset in the x and y direction
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      def_textfield(
                        hintText: "User Name",
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            "Date of Birth",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.calendar_today,
                            color: Theme.of(context).colorScheme.primary,
                            size: 30,
                          ),
                        ],
                      ),
                      Text(
                        'Selected Date: ${_selectedDate.toString().split(' ')[0]}',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => _selectDate(context),
                        child: Text('Select Date'),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Gender",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                              // Perform any actions or updates based on the new value here
                            },
                          ),
                          Icon(
                            Icons.male,
                            color: Theme.of(context).colorScheme.primary,
                            size: 50,
                          ),
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value ?? false;
                              });
                              // Perform any actions or updates based on the new value here
                            },
                          ),
                          Icon(
                            Icons.female,
                            color: Theme.of(context).colorScheme.primary,
                            size: 50,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 150, height: 200, child: WeightSelection(
                    text: "Height",
                    )),
                    SizedBox(width: 150, height: 200, child: WeightSelection(
                    text: "Weight",
                    )),
                  ],
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    primary: Colors.white,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    onSurface: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )),
      ),
    );
  }
}

class WeightSelection extends StatefulWidget {
  var text;

  // final String selectedWeight;
  // final List<String> weights;
    WeightSelection({Key? key, required this.text,}) : super(key: key);
  @override
  _WeightSelectionState createState() => _WeightSelectionState();
}

class _WeightSelectionState extends State<WeightSelection> {
  String _selectedWeight = '50 kg';
  List<String> _weights = [
    '50 kg',
    '60 kg',
    '70 kg',
    '80 kg',
    '90 kg',
    '100 kg',
  ];


  @override
  Widget build(BuildContext context) {
    String text=widget.text;
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Container(
          child: SizedBox(
            height: 150,
            child: CupertinoPicker(
              itemExtent: 40,
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedWeight = _weights[index];
                });
              },
              children: _weights.map((weight) {
                return Center(child: Text(weight));
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
