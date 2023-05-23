import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_button.dart';

class CheckUp extends StatelessWidget {
  const CheckUp({Key? key}) : super(key: key);

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
              Text(
                "Check up text",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("name",height: 300,
              width: double.infinity,),
              defButton(text: "Get Started")
            ],
          ),
        ),
      ),
    );
  }
}
