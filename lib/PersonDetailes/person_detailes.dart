import 'package:courswork_2/PersonDetailes/person_detailes_main.dart';
import 'package:courswork_2/Themes/app_color.dart';
import 'package:flutter/material.dart';

class PersonDetailesWidget extends StatefulWidget {
  final int personId;
  const PersonDetailesWidget({super.key, required this.personId});

  @override
  State<PersonDetailesWidget> createState() => _PersonDetailesWidgetState();
}

class _PersonDetailesWidgetState extends State<PersonDetailesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'NOSU         ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: ColoredBox(
        color: Colors.white,
        child: ListView(
          children: [PersonDetailesMainWidget()],
        ),
      ),
    );
  }
}
