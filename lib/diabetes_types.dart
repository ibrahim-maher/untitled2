import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_button.dart';

class diabetesTypes extends StatefulWidget {
  const diabetesTypes({Key? key}) : super(key: key);

  @override
  State<diabetesTypes> createState() => _diabetesTypesState();
}

class _diabetesTypesState extends State<diabetesTypes> {
  List<String> selectedItems = [];
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.info_outline)],
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "name",
                height: 300,
                width: double.infinity,
              ),
              Text(
                "What type of diabetes do you have?",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final isSelected = selectedItems.contains(item);

                      return Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: isSelected
                                ? Theme.of(context).primaryColor
                                : Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        alignment: Alignment.center,
                        child: GestureDetector(
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
                            style: TextStyle(
                              fontSize: 16.0,
                              color: isSelected
                                  ? Colors.white
                                  : Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: items.length,
                  )),
              defButton(text: "Next")
            ],
          ),
        ),
      ),
    );
  }
}
