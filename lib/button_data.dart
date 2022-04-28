// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';

class SignInButton extends StatelessWidget {
  final Button button;
  final double borderRadius;
  final Color buttonColor;
  final double height;
  final Color iconColor;
  final double iconSize;
  final bool mini;
  final Function()? onPressed;
  final Color splashColor;
  final String? text;
  final Color textColor;
  final double textSize;
  final double width;
  final bool spanish;

  SignInButton({
    this.button = Button.Xbox,
    this.borderRadius = 5,
    this.buttonColor = Colors.black12,
    this.height = 40,
    this.iconColor = Colors.black87,
    this.iconSize = 24,
    Key? key,
    this.mini = false,
    this.onPressed,
    this.splashColor = Colors.white30,
    this.text='',
    this.textColor = Colors.black,
    this.textSize = 15,
    this.width = double.infinity,
    this.spanish = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var texto = '';
    spanish ? texto = 'Iniciar Sesion con' : texto = 'Sign in with';
    text!.isNotEmpty ? texto = text! : texto = 'Sign in with';
    switch (button) {
      case Button.Apple:
      case Button.AppleDark:
        return CustomSignInButton(
            key: ValueKey('Apple'),
            mini: mini,
            text: '$texto Apple',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor:
                button == Button.Apple ? Color(0xFFE9E9E9) : Color(0xFF222222),
            textColor:
                button == Button.Apple ? Colors.black87 : Color(0xFFF3F2F1),
            customIcon: FontAwesomeIcons.apple,
            iconColor:
                button == Button.Apple ? Color(0xFF050505) : Color(0xFFF3F2F1),
            iconLeftPadding: mini ? 0 : 5,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            textSize: textSize,
            onPressed: onPressed);
      case Button.Discord:
        return CustomSignInButton(
            key: ValueKey('Discord'),
            mini: mini,
            text: '$texto Discord',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF5663F7),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.discord,
            iconLeftPadding: mini ? 0 : 9,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            imageMargin: EdgeInsets.only(right: 5, top: 4),
            iconColor: Colors.white,
            iconSize: iconSize,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Email:
        return CustomSignInButton(
            key: ValueKey('Email'),
            mini: mini,
            text: '$texto Email',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: buttonColor,
            textColor: textColor,
            customIcon: FontAwesomeIcons.envelope,
            iconColor: iconColor,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Facebook:
      case Button.FacebookNew:
        return CustomSignInButton(
            key: ValueKey('Facebook'),
            mini: mini,
            text: '$texto Facebook',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.FacebookNew
                ? Color(0xFF1877f2)
                : Color(0xFF3B5998),
            textColor: Colors.white,
            customIcon: button == Button.FacebookNew
                ? FontAwesomeIcons.facebook
                : FontAwesomeIcons.facebookF,
            // iconSize: button == Button.FacebookNew ? 28 : 25,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.GitHub:
        return CustomSignInButton(
            key: ValueKey('GitHub'),
            mini: mini,
            text: '$texto GitHub',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF444444),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.github,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Google:
      case Button.GoogleBlack:
      case Button.GoogleBlue:
        return CustomSignInButton(
            key: ValueKey('Google'),
            mini: mini,
            text: '$texto Google',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.GoogleBlue
                ? Color(0xFF397AF3)
                : button == Button.GoogleBlack
                    ? Color(0xFF222222)
                    : Color(0xFFF6F6F6),
            textColor:
                (button == Button.GoogleBlue || button == Button.GoogleBlack)
                    ? Colors.white
                    : Colors.black87,
            imageBackgroundColor:
                (button == Button.GoogleBlue || button == Button.GoogleBlack)
                    ? Colors.white
                    : Colors.transparent,
            useGoogleImage: true,
            textSize: textSize,
            onPressed: onPressed);
      case Button.GooglePlay:
        return CustomSignInButton(
            key: ValueKey('GooglePlay'),
            mini: mini,
            text: '$texto PlayStore',
            height: height,
            width: width,
            setAssetImage: AssetImage('assets/playstore.png'),
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFF6F6F6),
            textColor: Colors.black87,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Instagram:
      case Button.InstagramGradient:
        return CustomSignInButton(
            key: ValueKey('Instagram'),
            mini: mini,
            text: '$texto Instagram',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFDD2A7B),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.instagram,
            useGradient: button == Button.InstagramGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: const [
                  Color(0xFFF58529),
                  Color(0xFFDD2A7B),
                  Color(0xFF8134AF),
                  Color(0xFF515BD4)
                ],
                stops: const [
                  0,
                  0.40,
                  0.70,
                  1
                ]),
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.LinkedIn:
        return CustomSignInButton(
            key: ValueKey('LinkedIn'),
            mini: mini,
            text: '$texto LinkedIn',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF007BB5),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.linkedinIn,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Pinterest:
        return CustomSignInButton(
            key: ValueKey('Pinterest'),
            mini: mini,
            text: '$texto Pinterest',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFCB1F27),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.pinterest,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.PlayStation:
      case Button.PlayStationGradient:
        return CustomSignInButton(
            key: ValueKey('PlayStation'),
            mini: mini,
            text: '$texto PSN',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF00439c),
            useGradient: button == Button.PlayStationGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: const [
                  Color(0xFF00246E),
                  Color(0xFF0172D0),
                ],
                stops: const [
                  0.1,
                  0.9
                ]),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.playstation,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Reddit:
      case Button.RedditGradient:
        return CustomSignInButton(
            key: ValueKey('Reddit'),
            mini: mini,
            text: '$texto Reddit',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFFFF4500),
            useGradient: button == Button.RedditGradient ? true : false,
            setGradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: const [
                  Color(0xFFef131a),
                  Color(0xFFFF4500),
                ],
                stops: const [
                  0.1,
                  0.4
                ]),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.reddit,
            imagePadding: EdgeInsets.symmetric(vertical: 3),
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Spotify:
      case Button.SpotifyLight:
        return CustomSignInButton(
            key: ValueKey('Spotify'),
            mini: mini,
            text: '$texto Spotify',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.SpotifyLight
                ? Color(0xFF1DB954)
                : Color(0xFF222222),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.spotify,
            iconSize: 24,
            iconColor: button == Button.SpotifyLight
                ? Colors.white
                : Color(0xFF1DB954),
            textSize: textSize,
            onPressed: onPressed);
      case Button.Steam:
      case Button.SteamGradient:
        return CustomSignInButton(
            key: ValueKey('Steam'),
            mini: mini,
            text: '$texto Steam',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            useGradient: button == Button.SteamGradient ? true : false,
            setGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: const [
                Color(0xFF0a1a35),
                Color(0xFF133669),
                Color(0xFF1384b5)
              ],
              stops: const [0, 0.65, 1],
            ),
            buttonColor: Color(0xFF133669),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.steamSymbol,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.TikTok:
        return CustomSignInButton(
            key: ValueKey('TikTok'),
            mini: mini,
            text: '$texto TikTok',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            setAssetImage: AssetImage('assets/tiktok.png'),
            imageSize: 24,
            buttonColor: Colors.black,
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitter,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Twitch:
      case Button.TwitchLight:
        return CustomSignInButton(
            key: ValueKey('Twitch'),
            mini: mini,
            text: '$texto Twitch',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.TwitchLight
                ? Color(0xFF9146FF)
                : Color(0xFFFBFBFB),
            textColor:
                button == Button.TwitchLight ? Colors.white : Colors.black,
            customIcon: FontAwesomeIcons.twitch,
            iconColor:
                button == Button.TwitchLight ? Colors.white : Color(0xFF9146FF),
            textSize: textSize,
            onPressed: onPressed);
      case Button.Twitter:
        return CustomSignInButton(
            key: ValueKey('Twitter'),
            mini: mini,
            text: '$texto Twitter',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: Color(0xFF1DA1F2),
            textColor: Colors.white,
            customIcon: FontAwesomeIcons.twitter,
            iconColor: Colors.white,
            textSize: textSize,
            onPressed: onPressed);
      case Button.Xbox:
      case Button.XboxDark:
        return CustomSignInButton(
            key: ValueKey('Xbox'),
            mini: mini,
            text: '$texto Xbox',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor:
                button == Button.Xbox ? Color(0xFFFBFBFB) : Color(0xFF107C10),
            textColor:
                button == Button.Xbox ? Colors.black87 : Color(0xFFF3F2F1),
            customIcon: FontAwesomeIcons.xbox,
            iconColor:
                button == Button.Xbox ? Color(0xFF107C10) : Color(0xFFF3F2F1),
            textSize: textSize,
            onPressed: onPressed);
      case Button.Youtube:
      case Button.YoutubeDark:
        return CustomSignInButton(
            key: ValueKey('Youtube'),
            mini: mini,
            text: '$texto Youtube',
            height: height,
            width: width,
            splashColor: splashColor,
            borderRadius: borderRadius,
            buttonColor: button == Button.Youtube
                ? Color(0xFFFBFBFB)
                : Color(0xFFFF0000),
            textColor: button == Button.Youtube ? Colors.black87 : Colors.white,
            iconColor: button == Button.Youtube
                ? Color(0xFFFF0000)
                : Color(0xFFFBFBFB),
            customIcon: FontAwesomeIcons.youtube,
            textSize: textSize,
            onPressed: onPressed);
    }
  }
}
