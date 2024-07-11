import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_app/userprovider.dart';

class Profilepage extends StatelessWidget {
  String? name;
  Profilepage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Provider.of<userproviderclass>(context).name),
            ],
          ),
        ));
  }
}
