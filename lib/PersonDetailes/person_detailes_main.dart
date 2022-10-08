import 'dart:ffi';

import 'package:flutter/material.dart';

class PersonDetailesMainWidget extends StatefulWidget {
  const PersonDetailesMainWidget({super.key});

  @override
  State<PersonDetailesMainWidget> createState() =>
      _PersonDetailesMainWidgetState();
}

class _PersonDetailesMainWidgetState extends State<PersonDetailesMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'ФИО',
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                'Багаев Эрик Валерьевич',
                style: TextStyle(fontSize: 23, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
