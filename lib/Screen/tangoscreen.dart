// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

// Package
import 'package:flutter/material.dart';
import 'package:tango/constants.dart';

class TangoScreen extends StatefulWidget {
  @override
  State<TangoScreen> createState() => _TangoScreenState();
}

class _TangoScreenState extends State<TangoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text(
                  "風邪を引く",
                  style: japanese,
                ),
              ),
              Container(
                child: Text(
                  "[카제오히쿠]",
                  style: pronunciation,
                ),
              ),
              Container(
                child: Text(
                  "감기에 걸리다.",
                  style: korean,
                ),
              ),
              TextButton(onPressed: () {}, child: Text("次の単語")),
              TextButton(onPressed: () {}, child: Text("前の単語。")),
            ],
          ),
        ),
      ),
    );
  }
}
