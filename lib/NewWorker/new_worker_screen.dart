import 'package:courswork_2/Themes/app_color.dart';
import 'package:flutter/material.dart';

class NewWorkerScreen extends StatefulWidget {
  const NewWorkerScreen({super.key});

  @override
  State<NewWorkerScreen> createState() => _NewWorkerScreenState();
}

class _NewWorkerScreenState extends State<NewWorkerScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 6, right: 6),
      child: Stack(
        children: [
          ListView(
            children: [
              Column(children: [
                TextField(
                  clipBehavior: Clip.antiAlias,
                  autocorrect: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0))),
                      label: Text(
                        "ФИО",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ]),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      // minimumSize: MaterialStateProperty.all(Size(100, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.buttonColorGreen)),
                  onPressed: () {},
                  child: Text(
                    'Добавить сотрудника',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
