import 'package:flutter/material.dart';

import 'componants/def_button.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Send Your FeedBack',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/Artwork_15.png",
                height: 300,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                height: 100,
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
              defButton(text: "Send feedback"),
            ],
          ),
        ),
      ),
    );
  }
}
