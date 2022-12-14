import 'package:courswork_2/Themes/app_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textFirst = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    return Center(
      child: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Column(
            children: [
              SizedBox(height: 30),
              Text("Кадровый учет на факультете", style: textFirst),
              SizedBox(height: 10),
              NewLineSecond(newText: "Кадровая справка"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewLine(newText: " ● ФИО"),
                  NewLine(newText: " ● Адрес"),
                  NewLine(newText: " ● Должность"),
                  NewLine(newText: " ● Дата рождения"),
                  NewLine(newText: " ● Ученая степень. Год присвоения"),
                  NewLine(newText: " ● Ученая звание. Год присвоения"),
                  NewLine(newText: " ● Пол"),
                  NewLine(
                      newText:
                          " ● Образование (ВУЗ, специальность, год, номер)"),
                  NewLine(newText: " ● Контакты (телефон, почта)"),
                  NewLine(newText: " ● Дети (ФИО, дата рождения)"),
                ],
              ),
              NewLineSecond(newText: "Эффективность и стимулирующая"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewLine(
                      newText:
                          " ● Добавление в течении года участие в мероприятиях"),
                  NewLine(newText: " ● ФПК"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NewLine extends StatelessWidget {
  final String newText;
  const NewLine({super.key, required this.newText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.buttonColorBlue,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            newText,
            style: TextStyle(
              color: AppColor.mainWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class NewLineSecond extends StatelessWidget {
  final String newText;
  const NewLineSecond({super.key, required this.newText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 3),
      child: Container(
        width: 1000,
        decoration: BoxDecoration(
          color: AppColor.mainYellow,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              newText,
              style: TextStyle(
                color: AppColor.mainBlack,
                fontWeight: FontWeight.w900,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
