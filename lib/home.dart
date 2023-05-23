import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'articles.dart';
import 'componants/circular_progress.dart';
import 'componants/drawer.dart';
import 'componants/mycard.dart';
import 'componants/services_card.dart';
import 'componants/subheader.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const drawer(),
        appBar:  AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          title: const Text(
            'Hallo\n  ahemd',
            style: TextStyle(fontSize: 20),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon:CircleAvatar(
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
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 7, // Spread radius
                          blurRadius: 7, // Blur radius
                          offset: const Offset(
                              0, 3), // Offset in the x and y direction
                        ),
                      ],
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  subHeader(
                    text: "For you",
                    onPressed: () {
                      Get.to(() => ArticlesPage());
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 210,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const myCard();
                        }),
                  ),
                  subHeader(
                    text: "Activities",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 210,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return MyCircularProgress(
                            progressValue: 0.2,
                            color: Colors.blue,
                            icon: "assets/icons/running.jpg",
                          );
                        }),
                  ),
                  subHeader(
                    text: "Services",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return servicesCard();
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.chat),
        ));
  }
}

