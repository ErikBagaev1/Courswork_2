import 'package:courswork_2/Themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _workers = [
  WorkersCards(fullName: 'Багаев Эрик Валерьевич', position: 'должность'),
  WorkersCards(fullName: 'Бясов Давид Артурович', position: 'должность'),
  WorkersCards(fullName: 'Цахилов Валерий Георгиевич', position: 'должность'),
  WorkersCards(fullName: 'Коков Руслан Вадимович', position: 'должность'),
  WorkersCards(fullName: 'Имя 2', position: 'должность'),
  WorkersCards(fullName: 'Имя 3', position: 'должностgitь'),
  WorkersCards(fullName: 'Имя 1', position: 'должность'),
  WorkersCards(fullName: 'Имя 2', position: 'должность'),
  WorkersCards(fullName: 'Имя 3', position: 'должность'),
  WorkersCards(fullName: 'Имя 1', position: 'должность'),
  WorkersCards(fullName: 'Имя 2', position: 'должность'),
  WorkersCards(fullName: 'Имя 3', position: 'должность'),
];

class WorkersScreen extends StatefulWidget {
  const WorkersScreen({super.key});

  @override
  State<WorkersScreen> createState() => _WorkersScreenState();
}

class _WorkersScreenState extends State<WorkersScreen> {
  var _searchWorkers = <WorkersCards>[];

  final _searConroller = TextEditingController();
  void _searchWorker() {
    final query = _searConroller.text;
    if (query.isNotEmpty) {
      _searchWorkers = _workers.where((WorkersCards worker) {
        return worker.fullName.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _searchWorkers = _workers;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement setState
    super.initState();

    _searchWorkers = _workers;
    _searConroller.addListener((_searchWorker));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            itemCount: _searchWorkers.length,
            itemExtent: 75,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (BuildContext, int index) {
              return Column(
                children: [
                  _searchWorkers[index],
                ],
              );
            }),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searConroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withAlpha(200),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ))
      ],
    );
  }
}

class WorkersCards extends StatelessWidget {
  final String fullName;
  final String position;
  const WorkersCards(
      {super.key, required this.fullName, required this.position});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 65))),
        onPressed: (() {}),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                fullName,
                style: TextStyle(
                    color: AppColor.mainYellow,
                    fontWeight: FontWeight.w700,
                    fontSize: 23),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                position,
                style: TextStyle(
                    color: AppColor.secondColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
