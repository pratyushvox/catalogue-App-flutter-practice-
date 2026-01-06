import 'package:flutter/material.dart';
import 'package:my_app/Utils/routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool ChangeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_page.png", fit: BoxFit.cover),

            SizedBox(height: 26),

            Text(
              "welcome $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",

                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 22),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            InkWell(
              
              onTap: ()async{
               
                setState(() {
                   ChangeButton = true;
                   
                   
                  
                });
                await Future.delayed(Duration(seconds:1));
                   Navigator.pushNamed(context, MyRoutes.HomeRoute);
                   

                // Navigator.pushNamed(context, MyRoutes.HomeRoute);
              

              },


              child: AnimatedContainer(
              duration:Duration(seconds: 1) ,
              width: ChangeButton?50 : 100,
              height: 50,
              
              alignment: Alignment.center,

              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: ChangeButton ? BorderRadius.circular(50.0) : BorderRadius.circular(8.0),
                // shape: ChangeButton ? BoxShape.circle : BoxShape.rectangle,
                
              ),
              child: ChangeButton?Icon(Icons.done , color: Colors.white,):Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  
                ),
              ),
              
            ),

            )

            

            // ElevatedButton(
            //   onPressed: () {
            //    
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.amber,
            //     foregroundColor: Colors.white,
            //     padding: EdgeInsets.symmetric(horizontal: 40 , vertical:15),
            //     shape: RoundedRectangleBorder(
            //        borderRadius: BorderRadius.circular(12.0),
            //     ),
            //   ),
            //   child: Text("Login" , ),

            // )
          ],
        ),
      ),
    );
  }
}
