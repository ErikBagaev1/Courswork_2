import 'package:courswork_2/Themes/app_color.dart';

import 'package:flutter/material.dart';

class Person {
  final int id;
  final String fullName;
  final String position;

  Person({required this.id, required this.fullName, required this.position});
}

final _workers = [
  Person(id: 1, fullName: 'Багаев Эрик Валерьевич', position: 'должность'),
  Person(id: 2, fullName: 'Бясов Давид Артурович', position: 'должность'),
  Person(id: 3, fullName: 'Цахилов Валерий Георгиевич', position: 'должность'),
  Person(id: 4, fullName: 'Коков Руслан Вадимович', position: 'должность'),
  Person(id: 5, fullName: 'Котаев Аслан Анатольевич', position: 'должность'),
];

class WorkersScreen extends StatefulWidget {
  const WorkersScreen({super.key});

  @override
  State<WorkersScreen> createState() => _WorkersScreenState();
}

class _WorkersScreenState extends State<WorkersScreen> {
  var _searchWorkers = <Person>[];

  final _searConroller = TextEditingController();
  void _searchWorker() {
    final query = _searConroller.text;
    if (query.isNotEmpty) {
      _searchWorkers = _workers.where((Person worker) {
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
    _searchWorkers.sort((a, b) {
      return a.fullName[0]
          .toString()
          .toLowerCase()
          .compareTo(b.fullName[0].toString().toLowerCase());
    });
    _searConroller.addListener((_searchWorker));
  }

  void _onPersonTap(int index) {
    final id = _workers[index].id;
    Navigator.of(context).pushNamed('/person_detailes', arguments: id);
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
              final person = _searchWorkers[index];
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(double.infinity, 65))),
                      onPressed: (() => _onPersonTap(index)),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9),
                            child: Text(
                              person.fullName,
                              style: TextStyle(
                                  color: AppColor.mainYellow,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 9),
                            child: Text(
                              person.position,
                              style: TextStyle(
                                  color: AppColor.grayColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
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

// class WorkersCards extends StatelessWidget {
//   final String fullName;
//   final String position;
//   const WorkersCards(
//       {super.key, required this.fullName, required this.position});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
//       child: ElevatedButton(
//         style: ButtonStyle(
//             minimumSize: MaterialStateProperty.all(Size(double.infinity, 65))),
//         onPressed: (() => _onPersonTap(index)),
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 9),
//               child: Text(
//                 fullName,
//                 style: TextStyle(
//                     color: AppColor.mainYellow,
//                     fontWeight: FontWeight.w700,
//                     fontSize: 23),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 9),
//               child: Text(
//                 position,
//                 style: TextStyle(
//                     color: AppColor.secondColor,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 18),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
