# A package designed to create sign in buttons in an easier and more customizable way.

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
  onPressed: () {},
)

// with custom text
SignInButton(
  Buttons.Google,
  text: "Sign up with Google",
  onPressed: () {},
)
```

### For mini buttons.

```dart
SignInButton(
  Buttons.Facebook,
  mini: true,
  onPressed: () {},
)
```

### For self-build buttons.

```dart
SignInButtonBuilder(
  text: 'Sign in with Email',
  icon: Icons.email,
  onPressed: () {},
  backgroundColor: Colors.blueGrey[700]!,
)
```

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
  GoogleBlue,
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

<img src="https://github.com/ZaynJarvis/Flutter-Sign-in-Button/raw/master/showcase.png" width="300">

**Refer to example folder and the source code for more information.**
