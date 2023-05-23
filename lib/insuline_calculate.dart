import 'package:flutter/material.dart';
import 'componants/def_button.dart';
import 'componants/def_textfield.dart';

class InsulinaCalcPage extends StatefulWidget {
  const InsulinaCalcPage({Key? key}) : super(key: key);

  @override
  State<InsulinaCalcPage> createState() => _InsulinaCalcPageState();
}

class _InsulinaCalcPageState extends State<InsulinaCalcPage> {
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
          'Insulina Calculator',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
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

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Target Blood Sugar',
                      suffixText: 'mg/dl',

                      suffixStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
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

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Carb (Grams)',
                      suffixText: 'g',

                      suffixStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
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

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(

                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Current Blood Sugar',
                      suffixText: 'mg/dl',
                      suffixStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ),

                const SizedBox(
                  height: 40,
                ),
                defButton(
                  text: "Calculate",
                ),
                const SizedBox(
                  height: 40,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Your Insulin Dose:$calc unit ",style: TextStyle (
                      fontSize: 20,
                      fontWeight: FontWeight.bold,  color: Theme.of(context).colorScheme.primary,
                    ),),

                    Image.asset("assets/images/doctor.png" ,height: 200,width: 150,),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
