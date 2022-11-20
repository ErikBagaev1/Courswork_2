import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Themes/app_color.dart';

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
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Column(
        children: [
          AboutPerson(
            sectionKey: 'ФИО',
            sectionValue: 'Багаев Эрик Валерьевич',
          ),
          AboutPerson(
            sectionKey: 'Aдрес',
            sectionValue: 'пгт. Заводской 10-я линия дом 61',
          ),
          AboutPerson(
            sectionKey: 'Должность',
            sectionValue: 'Декан факультета математики и компьютерных наук ',
          ),
          AboutPerson(
            sectionKey: 'Дата рождения',
            sectionValue: '25.12.2003г',
          ),
          AboutPerson(
            sectionKey: 'Ученая степень',
            sectionValue: 'Профессор',
          ),
        ],
      ),
    );
  }
}

class AboutPerson extends StatelessWidget {
  final String sectionKey;
  final String sectionValue;
  const AboutPerson(
      {super.key, required this.sectionKey, required this.sectionValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.mainYellow,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: AppColor.buttonColorBlue, width: 4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Text(
                sectionKey,
                style: TextStyle(
                    fontSize: 23,
                    color: AppColor.mainBlack,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                textAlign: TextAlign.center,
                softWrap: true,
                sectionValue,
                style: TextStyle(fontSize: 23, color: AppColor.mainBlack),
              )
            ],
          ),
        ),
      ),
    );
  }
}
