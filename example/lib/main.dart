// ignore_for_file: use_key_in_widget_ructors, prefer__ructors, avoid_unnecessary_containers,prefer__literals_to_create_immutables,prefer_final_fields,, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ButtonPage());
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignInButton(
                button: Button.AppleDark,
                borderRadius: 30,
                buttonColor: Colors.green,
                height: 40,
                iconColor: Colors.green,
                iconSize: 20,
                mini: false,
                onPressed: () {},
                spanish: true,
                splashColor: Colors.pink,
                text: 'Youtube custom',
                small: false,
                textColor: Colors.blue,
                useText: true,
                textSize: 15,
                width: 200,
              ),
              SignInButton(
                button: Button.AppleDark,
                small: true,
                iconSize: 50,
              ),
              // SignInButton(
              //   button: Button.AppleDark,
              //   small: true,
              // ),
              SizedBox(height: 10),
              SignInButton(
                button: Button.TikTok,
                small: true,
              ),
              SizedBox(height: 10),
              SignInButton(button: Button.Email),
              SizedBox(height: 10),
              CustomSignInButton(
                height: 80,
                width: 80,
                // text: ' ',
                iconLeftPadding: 2,
                iconTopPadding: 2,
                iconSize: 62,
                customIcon: FontAwesomeIcons.facebookF,
                iconColor: Colors.white,
                buttonColor: Colors.blue.shade700,
              )
            ],
          ),
        ),
      ),
    );
  }
}
