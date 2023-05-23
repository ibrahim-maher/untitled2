import 'package:flutter/material.dart';
import 'componants/def_button.dart';
import 'componants/def_textfield.dart';

class RetinaPage extends StatefulWidget {
  const RetinaPage({Key? key}) : super(key: key);

  @override
  State<RetinaPage> createState() => _RetinaPageState();
}

class _RetinaPageState extends State<RetinaPage> {
  bool _isChecked = false;

  var calc =0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
          'Analysis of Retina CT ',

          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/doctor.png" ,height: 300,width: double.infinity,),

                const SizedBox(
                  height: 40,
                ),
                defButton(
                  text: "Save",
                ),
                const SizedBox(
                  height: 40,
                ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            width: double.infinity,
            height: 200,
            alignment: Alignment.center,
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
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(" bla bla bla",style: TextStyle(fontSize: 20),)
          )

              ],
            ),
          )),
    );
  }
}
