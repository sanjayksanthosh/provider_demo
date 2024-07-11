import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_app/homepage.dart';
import 'package:provider_demo_app/userprovider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              // onChanged: (value) {
              //   Provider.of<userproviderclass>(context, listen: false)
              //       .addname(value);
              // },
            ),

            Text(Provider.of<userproviderclass>(context).name),
            ElevatedButton(
                onPressed: () {
                  Provider.of<userproviderclass>(context, listen: false)
                      .addname(nameController.text);

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Homepage(
                        name: "demo",
                      );
                    },
                  ));
                },
                child: Text("login")),
            SizedBox(height: 10),
            // ElevatedButton(onPressed: () {}, child: Text("go to next page"))
          ],
        ),
      ),
    );
  }
}
