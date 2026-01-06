import 'package:flutter/material.dart';
import 'package:my_app/Utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>(); 

  // Function to move to Home Page
  moveToHome(BuildContext context) async {
    // validate form
    if (_formKey.currentState!.validate()) {
      // fixed syntax
      setState(() {
        changeButton = true;
      });

      // small animation delay
      await Future.delayed(Duration(seconds: 1));

      // navigate to Home
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/Login_image.png", fit: BoxFit.cover),

              SizedBox(height: 26),

              Text(
                "Welcome $name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              SizedBox(height: 30),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 32.0),
                child: Column(
                  children: [
                    // Username Field
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),

                    SizedBox(height: 22),

                    // Password Field
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              // Login Button
              Material(
                color: Colors.deepPurple,
                borderRadius: changeButton
                    ? BorderRadius.circular(50.0)
                    : BorderRadius.circular(8.0),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
