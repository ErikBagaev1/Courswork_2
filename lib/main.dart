import 'package:courswork_2/PersonDetailes/person_detailes.dart';
import 'package:courswork_2/basic/basik_display.dart';
import 'package:flutter/material.dart';
import 'Themes/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColor.mainYellow,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: AppColor.mainYellow,
            selectedItemColor: AppColor.mainBlack,
            unselectedItemColor: Color.fromARGB(255, 91, 107, 119),
          )),
      routes: {
        '/': (context) => BasicDisplay(),
        '/person_detailes': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int) {
            return PersonDetailesWidget(personId: arguments);
          } else {
            return PersonDetailesWidget(personId: 0);
          }
        },
        // '/main_screen/movie_details': (context) {
        //   // final arguments = ModalRoute.of(context)?.settings.arguments;
        //   // if (arguments is int) {
        //   //   return MovieDetailsWidget(movieId: arguments);
        //   // } else {
        //   //   return MovieDetailsWidget(movieId: 1);
        //   // }
        // }
      },
      initialRoute: '/',
    );
  }
}
