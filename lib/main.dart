import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ge_task/pages/home_screen.dart';

void main() {
  runApp(const GETask());
}

class GETask extends StatelessWidget {
  const GETask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'GE Task',
        theme: ThemeData(),
        routes: {
          '/': (ctx) => const HomeScreen(),
        },
      );
    });
  }
}
