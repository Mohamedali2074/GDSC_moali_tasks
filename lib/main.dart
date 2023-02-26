import 'package:flutter/material.dart';
import 'package:task2_register_page/routes_manger.dart';
import 'views/widgets/login_page.dart';
import 'views/widgets/register_page.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: Routes.registerPageRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
