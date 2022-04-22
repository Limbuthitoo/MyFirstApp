import 'package:flutter/material.dart';
import 'package:myapp_1/utilities/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 6,
                  offset: Offset(3, 5)
                )],
                gradient: LinearGradient(
                  begin:Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors:[
                    Colors.blueAccent,
                    Colors.purpleAccent,
                  ] 
                )
              ),
              height: 350,
              width: 450,
              child: Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),                            
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter Username",
                            labelText: "Username",
                            filled: true,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hintText: "Enter Password",
                            labelText: "Password",
                            filled: true
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: Text("Log In"),
                          style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
