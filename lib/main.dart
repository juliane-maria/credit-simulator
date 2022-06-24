import 'package:flutter/material.dart';
import 'package:simular_credito/presenter/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 251, 251, 252),
        secondaryHeaderColor: Color.fromRGBO(11, 107, 185, 1),
      ),
      home: const HomePage(),
    );
  }
}
