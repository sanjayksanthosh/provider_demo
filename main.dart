import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_app/loginPage.dart';
import 'package:provider_demo_app/userprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => userproviderclass(),
        child: MaterialApp(
          home: LoginPage(),
        ));
  } 
}
