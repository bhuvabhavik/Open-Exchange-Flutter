import 'package:flutter/material.dart';

InputDecoration getInputDecoration(String hintText, String helperText) {
  return InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      // helperText: "अमरीकी डालर में प्रवेश करें",
      helperText: helperText,
      helperStyle: TextStyle(fontSize: 16, color: Colors.black),
//errorText: "Please enter Amount",
      focusColor: Colors.pinkAccent,
      hoverColor: Colors.pinkAccent,
      prefixIcon: Icon(Icons.attach_money_rounded),
      prefixIconColor: Colors.pinkAccent,
      prefixStyle: TextStyle(
        color: Colors.white,
      ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pink, width: 1)));
}
