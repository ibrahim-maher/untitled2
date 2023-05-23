import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'articles.dart';
import 'componants/circular_progress.dart';
import 'componants/drawer.dart';
import 'componants/mycard.dart';
import 'componants/subheader.dart';

class activityPage extends StatelessWidget {
  const activityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Hallo\n  ahemd',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: const AssetImage('assets/images/doctor.png'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dialy Activity",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Today is\n ${today.toString().substring(0, 10)}',
                  // Format the date string as desired
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 25,
                ),

                SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 40,
                      physics: NeverScrollableScrollPhysics(), // Disable GridView's scrolling
                      padding: const EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of cells in each row
                        childAspectRatio: 1.0, // Aspect ratio of the grid cells
                        mainAxisSpacing: 10.0,
                      ),
                      itemBuilder: (context, index) {
                        return MyCircularProgress(
                          progressValue: 0.2,
                          color: Colors.blue,
                          icon: "assets/icons/running.jpg",
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
