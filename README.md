# animated_loading_border

<a href="https://flutter.dev/"><img src="https://img.shields.io/badge/flutter-website-deepskyblue.svg" alt="Flutter Website"></a>
<a href="https://dart.dev"><img src="https://img.shields.io/badge/dart-website-deepskyblue.svg" alt="Dart Website"></a>
<a href="https://developer.android.com" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-Android-deepskyblue">
</a>
<a href="https://developer.apple.com/ios/" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-iOS-deepskyblue">
</a>
<a href="" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-Web-deepskyblue">
</a>
<a href="" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-Mac-deepskyblue">
</a>
<a href="" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-Linux-deepskyblue">
</a>
<a href="" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/badge/platform-Windows-deepskyblue">
</a>
<a href=""><img src="https://app.codacy.com/project/badge/Grade/dc683c9cc61b499fa7cdbf54e4d9ff35"/></a>
<a href="https://github.com/mohit-chauhan-98/animated_loading_border/blob/master/LICENSE" style="pointer-events: stroke;" target="_blank">
<img src="https://img.shields.io/github/license/mohit-chauhan-98/animated_loading_border"></a>
<a href="https://pub.dev/packages/animated_loading_border"><img src="https://img.shields.io/pub/v/animated_loading_border?color=as&label=animated_loading_border&logo=as1&logoColor=blue&style=social"></a>
<a href="https://github.com/mohit-chauhan-98/animated_loading_border"><img src="https://img.shields.io/github/stars/mohit-chauhan-98/animated_loading_border?style=social" alt="MIT License"></a>

## Key Definition

* A package that gives us a modern way to show animated border as a placeholder while loading our
  widget with easy customization and ready to use.

# Preview

![animated_loading_border](https://github.com/mohit-chauhan-98/animated_loading_border/blob/master/assets/light_animated_loading_border.gif)
![animated_loading_border](https://github.com/mohit-chauhan-98/animated_loading_border/blob/master/assets/dark_animated_loading_border.gif)

## Basic Usage

Import it to your project file

```
import 'package:animated_loading_border/animated_loading_border.dart';
```

And add it in its most basic form like it:

```
AnimatedLoadingBorder(
  child: Container(),
  controller: (animationController) {
     // Here we get animationController     
  },
);
```

### Required parameters of AnimatedLoadingBorder
------------

| Parameter |  Description  |
| ------------ |  ------------ |
| Widget child | The child contained by the AnimatedLoadingBorder |

### Optional parameters of AnimatedLoadingBorder
------------

| Parameter |  Default | Description  |
| ------------ | ------------ | ------------ |
| ValueChanged<AnimationController>? controller | -- | Callback that gives the AnimationController of the AnimatedLoadingBorder |
| Duration duration | Duration(seconds: 4) | Defines the animation duration |
| double cornerRadius | 0.0 | Defines the corner radius of the border |
| double borderWidth | 1 | Defines the width of the border |
| Color borderColor | Colors.black | Defines the color of the border |
| Color trailingBorderColor | Colors.black | Defines the color for the trailing part of the border |
| EdgeInsets padding | EdgeInsets.zero | Used to add child widget padding |
| bool startWithRandomPosition | true | Used to set starting position of SweepGradient |
| bool isTrailingTransparent | true | Used to set starting color of SweepGradient |

### Guideline for contributors
------------

* Contribution towards my repository is always welcome, i request contributors to create a pull
  request for development.

### Guideline to report an issue/feature request
------------
It would be great for me if the reporter can share the below things to understand the root cause of
the issue.

* Library version
* Code snippet
* Logs if applicable
* Device specification like (Manufacturer, OS version, etc)
* Screenshot/video with steps to reproduce the issue
* Library used

LICENSE!
------------
**animated_loading_border**
is [MIT-licensed.](https://github.com/mohit-chauhan-98/animated_loading_border/blob/master/LICENSE)
