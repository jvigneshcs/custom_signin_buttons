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
              SignInButton(button: Button.AppleDark),
              SizedBox(height: 10),
              SignInButton(button: Button.Discord),
              SizedBox(height: 10),
              SignInButton(button: Button.Email),
              SizedBox(height: 10),
              SignInButton(button: Button.FacebookNew),
              SizedBox(height: 10),
              SignInButton(button: Button.GitHub),
              SizedBox(height: 10),
              SignInButton(button: Button.Google),
              SizedBox(height: 10),
              SignInButton(button: Button.InstagramGradient),
              SizedBox(height: 10),
              SignInButton(button: Button.LinkedIn),
              SizedBox(height: 10),
              SignInButton(button: Button.Pinterest),
              SizedBox(height: 10),
              SignInButton(button: Button.PlayStation),
              SizedBox(height: 10),
              Row(
                children: [
                  SignInButton(button: Button.Reddit, mini: true),
                  SizedBox(width: 10),
                  SignInButton(button: Button.Spotify, mini: true),
                  SizedBox(width: 10),
                  SignInButton(button: Button.TikTok, mini: true),
                  SizedBox(width: 10),
                  SignInButton(button: Button.Twitch, mini: true),
                  SizedBox(width: 10),
                  SignInButton(button: Button.XboxDark, mini: true),
                  SizedBox(width: 10),
                  SignInButton(button: Button.YoutubeDark, mini: true),
                  SizedBox(width: 10),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
