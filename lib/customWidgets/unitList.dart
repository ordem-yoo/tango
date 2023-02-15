// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

// Packages
import 'package:flutter/material.dart';

//constants
import '../constants.dart';
import '../screen/tango_Screen.dart';

class UnitList extends StatefulWidget {
  @override
  State<UnitList> createState() => _UnitListState();
}

class _UnitListState extends State<UnitList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                "${index + 1}",
                style: listNum,
              ),
            ),
            title: Text('hello', style: listJp),
            subtitle: Text('hiu', style: listKr),
            trailing: TextButton(
              autofocus: true,
              child: Text('暗記'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Tango();
                }));
              },
            ),
          );
        });
  }
}
