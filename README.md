# Custom Sign-In Buttons :3
## A package designed to create sign in buttons in an easier and more customizable way.

> ## Inspired in [flutter_signin_buttons](https://pub.dev/packages/flutter_signin_button)


## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  custom_signin_buttons: ^1.0.0
```

## Usage Example

import custom_signin_buttons.dart

```dart
import 'package:custom_signin_buttons/custom_signin_buttons.dart';
```

### For built-in buttons.

```dart
SignInButton(
  Buttons.Google,
)

// with custom text
SignInButton(
  button: Button.Discord,
  text: 'Inicia con Discord',
),
```

### For mini buttons.

```dart
SignInButton(
  Buttons.Facebook,
  mini: true,
)
```
### For small buttons.

```dart
SignInButton(
  Buttons.Facebook,
  small: true,
)
```

### For self-build buttons.

```dart
CustomSignInButton(
  text: 'Sign In With Email',
  customIcon: Icons.email,
  buttonColor: Colors.blue,
  iconColor: Colors.grey,
  textColor: Colors.grey,
  mini: false,
)

CustomSignInButton(
  customIcon: FontAwesomeIcons.envelopeOpen,
  buttonColor: Colors.blue,
  iconColor: Colors.grey,
  mini: true,
),
```

### For buttons with borders.

```dart
// Button with a simple border
CustomSignInButton(
  text: 'Sign In With Border',
  customIcon: Icons.email,
  buttonColor: Colors.white,
  textColor: Colors.blue,
  iconColor: Colors.blue,
  borderColor: Colors.blue,
  borderWidth: 2.0,
)

// Button with thick red border
CustomSignInButton(
  text: 'Custom Border Style',
  customIcon: Icons.lock,
  buttonColor: Colors.grey.shade50,
  textColor: Colors.red,
  iconColor: Colors.red,
  borderColor: Colors.red,
  borderWidth: 3.0,
  borderRadius: 10,
)

// Button with gradient and border
CustomSignInButton(
  text: 'Gradient + Border',
  customIcon: Icons.star,
  useGradient: true,
  setGradient: LinearGradient(
    colors: [Colors.purple, Colors.blue],
  ),
  textColor: Colors.white,
  iconColor: Colors.white,
  borderColor: Colors.white,
  borderWidth: 2.0,
)
```

``` onPressed(){} ``` isn't required

### Built-in Buttons contain

```dart
enum Button {
  Apple,
  AppleDark,
  Discord,
  Email,
  Facebook,
  FacebookNew,
  GitHub,
  Google,
  GoogleNeutral,
  GoogleBlack,
  GooglePlay,
  Instagram,
  InstagramGradient,
  LinkedIn,
  Pinterest,
  PlayStation,
  PlayStationGradient,
  Reddit,
  RedditGradient,
  Steam,
  SteamGradient,
  Spotify,
  SpotifyLight,
  TikTok,
  Twitch,
  TwitchLight,
  Twitter,
  Xbox,
  XboxDark,
  Youtube,
  YoutubeDark,
}
```


<img src="https://github.com/DarkHachi/custom_signin_buttons/raw/master/showcase.PNG" width="300">
