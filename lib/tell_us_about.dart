import 'package:flutter/material.dart';
import 'componants/def_button.dart';
import 'componants/def_textfield.dart';

class TellUsPage extends StatefulWidget {
  const TellUsPage({Key? key}) : super(key: key);

  @override
  State<TellUsPage> createState() => _TellUsPageState();
}

class _TellUsPageState extends State<TellUsPage> {
  bool _isChecked = false;

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
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
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
                        offset:
                            const Offset(0, 3), // Offset in the x and y direction
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      def_textfield(
                        label:" First Name",

                      ),
                      def_textfield(
                        label: "Last Name",
                      ),
                      def_textfield(

                        label: "Medical Specialty",
                      ),
                      def_textfield(
                        label: "Phone Number",
                      ),
                      const SizedBox(
                        height: 25,
                      ),
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
                defButton(
                  text: "Next",
                ),
              ],
            ),
          )),
    );
  }
}
