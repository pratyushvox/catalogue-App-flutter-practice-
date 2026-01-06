import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 45;
    String name = "Pratyush khadka";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogue App"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Flutter in $days by $name"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ✅ Navigate to Login page
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Go to Login"),
            ),
          ],
        ),
      ),
      drawer: Drawer(backgroundColor: Colors.pink),
    );
  }
}
