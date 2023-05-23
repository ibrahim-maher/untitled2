import 'package:flutter/material.dart';

import 'componants/def_button.dart';

class Type1Page extends StatefulWidget {
  const Type1Page({Key? key}) : super(key: key);

  @override
  State<Type1Page> createState() => _Type1PageState();
}

class _Type1PageState extends State<Type1Page> {

  List<String> selectedItems = [];
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),

              Image.asset("assets/images/Artwork_15.png",height: 300,width: double.infinity,),
              SizedBox(height: 20,),
              Text(
                'Do you have diabetes?',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 400,
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
                      height: 50,
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
            ],
          ),
        ),
      ),
    );
  }
}
