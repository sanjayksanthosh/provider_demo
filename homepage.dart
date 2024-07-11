import 'package:flutter/material.dart';
import 'package:provider_demo_app/profilepage.dart';

class Homepage extends StatelessWidget {
  String? name;
  Homepage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name!),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Profilepage(
                          name: name,
                        );
                      },
                    ));
                  },
                  child: Text("nextpage"))
            ],
          ),
        ));
  }
}
