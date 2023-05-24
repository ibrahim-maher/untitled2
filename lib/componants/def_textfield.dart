
import 'package:flutter/material.dart';

class def_textfield extends StatelessWidget {
  var hintText;

  Icon? icon;
  String? label ;
  Icon? prefixIcon;


  var controller;
  def_textfield({
    Key? key,
    this.icon,
    this.controller,
    this.label,
    this.hintText,   this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 7,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(label!),
          hintText: hintText,
          suffixIcon: icon,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
