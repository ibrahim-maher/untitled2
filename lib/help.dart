import 'package:flutter/material.dart';

import 'componants/def_button.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help Center',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.info_outline)],
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

              Text(
                'How can we help you?',
                style: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 20,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Enter your FeedBack',
                  ), // decoration
                ),
              ),
              defButton(text: "Send"),
            ],
          ),
        ),
      ),
    );
  }
}
