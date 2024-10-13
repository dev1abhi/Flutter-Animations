# Flutter-Animations




![DO-HFest-EmailBanner-600px-1-@3x](https://github.com/user-attachments/assets/7421fbee-86b6-46ff-9d7d-d914d3ecdef1)



<div align="center">

### <span style="font-size: larger;">We are trying to make a Flutter app, which has an example of every Flutter animation available.</span>
### <span style="font-weight: bold; font-size: larger;">Please `Star` this repo ⭐ if you liked the idea. Thanks a lot.</span>

</div>



# How to contribute to this project

<p align="center">
  <img src="https://github.com/dev1abhi/Flutter-Animations/assets/132396257/6fa07a87-d1db-4f2a-a162-b06d8f2c26d1" width="25%" height="15%" hspace="30">
    <img src="https://github.com/dev1abhi/Flutter-Animations/assets/132396257/944b496b-ff37-422f-a530-d52f3f2832aa" width="25%" height="10%" hspace="30">
  <img src="https://github.com/dev1abhi/Flutter-Animations/assets/132396257/9f5715e5-391e-472c-8238-4082f0a99248" width="25%" height="15%">
</p>




- Make sure to read the [contributing guidelines](CONTRIBUTING.md) before contributing.
- `Fork` this repository.
- `Clone` your fork on local machine.
- Switch to the `main` branch.
- Make a new `branch`, preferably with the feature name.
- Checkout to the new branch with `git checkout <new_branch_name>`
- Do the desired changes and `commit` them with `git commit -m '<a nice commit message here>'`.
- `Push` the change to your fork on GitHub with `git push origin <your_branch_name>`
- Make a `Pull Request` to the master branch in the original repository, i.e. this one.

Note: Make sure you are always up to date with sync and pull upstream. Sync and pull before you start and before you push your work.

# Introduction to Animations in Flutter

There are multiple types of animations which can be implemented in Flutter apps. Deciding which animation is the best for your app depends upon a lot of factors, like whether the animationns is code-based or drawing-based, the life cycle of the animations, etc. To get an idea for the best-suited animations for your app, watch this video from the official Flutter YouTube channel: 

[Click on this link for the Youtube Video](https://www.youtube.com/watch?v=GXIJJkq_H8g&list=PLjxrf2q8roU2v6UqYlt_KPaXlnjbYySua)

## Flutter Fade-In and Fade-Out Animation

### Introduction
Fade-in and fade-out animations provide smooth transitions for elements in your Flutter app. These animations involve changing the opacity of an element from invisible to visible (fade-in) or vice versa (fade-out). You can achieve this easily using the `AnimatedOpacity` widget.

### Using `AnimatedOpacity`

1. **Import Dependencies**: Import the necessary Flutter libraries.

2. **Create an `AnimatedOpacity` Widget**: Wrap the widget you want to animate with `AnimatedOpacity`. 

```dart
AnimatedOpacity(
  opacity: _opacity, // Set opacity value.
  duration: Duration(seconds: 1), // Set animation duration.
  child: YourWidgetToAnimate(),
)
```
3. **Trigger the Animation**: Update the `_opacity` value within a `setState` call to trigger the fade-in or fade-out animation.

4. **Customize the Animation**: Adjust the `duration` property to control how long the animation takes to complete.

With `AnimatedOpacity`, you can easily add elegant fade-in and fade-out animations to your Flutter app elements, enhancing the user experience.


## Flutter Interpolation

### Introduction
Interpolation in flutter refers to gradually changing dimensions of a particular element appearing on your app display. Using interpolation, you can add special effects on buttons, icons, etc. and make them touch responsive to enhance the user experience. You can achieve interpolation using `AnimatedContainer` class.

### Using `AnimatedContainer`

1. **Import Dependencies**: Import the necessary Flutter libraries and packages.

2. **Create an `AnimatedContainer` Widget**: Use the AnimatedContainer widget as the child of the necessary parent widget. Specify the initial and updated dimensions for the widget and specify other properties like colors, etc.

3. **Trigger the Animation**: Update the `selected` property value to `!selected` under the `setState()` method.

```dart
Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 75),
        ),
      ),
    );
  }
```
4. **Customize the animation**: You can change the `Duration` value in seconds to speed up or slow down your animation. Along with that there are other properties like alignment, constraints, decoration, padding, margin, etc. which allow you to tinker your animations according gto your specific needs. For more info on AnimatedContainer, visit `https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html`.

## Shimmer animations
Shimmer animations in Flutter are a popular way to add subtle, eye-catching visual effects to your user interface. They simulate a shimmering or sparkling effect, often used to indicate that content is loading or to draw attention to specific elements in your app. Flutter provides a simple and effective way to implement shimmer animations using various packages, with one of the most widely used being the "shimmer" package.

Here's a brief guide on how to create shimmer animations in Flutter:

1. **Install the Shimmer Package**:

   To get started, add the shimmer package to your Flutter project. Open your `pubspec.yaml` file and add the following dependency:

   ```yaml
   dependencies:
     shimmer: ^0.6.0 // Use the latest version available
   ```

   Then, run `flutter pub get` in your terminal to install the package.

2. **Import the Shimmer Widget**:

   Import the shimmer package in your Dart file where you want to use the shimmer effect:

   ```dart
   import 'package:shimmer/shimmer.dart';
   ```

3. **Create a Shimmer Animation**:

   You can wrap any widget with a `Shimmer` widget to apply the shimmer effect to it. For example, to create a shimmering loading indicator, you can wrap a `Container` with the `Shimmer` widget:

   ```dart
   Shimmer.fromColors(
     baseColor: Colors.grey[300], // The color of the non-animated part
     highlightColor: Colors.grey[100], // The color of the animated part
     child: Container(
       width: 200.0,
       height: 20.0,
       color: Colors.white, // The color of the container (optional)
     ),
   )
   ```

4. **Customize Shimmer Effect**:

   You can customize the shimmer effect by adjusting the `baseColor` and `highlightColor` properties to match your app's design. Additionally, you can set the `direction`, `period`, and other properties to control the animation behavior.

5. **Use Shimmer in Widgets**:

   You can use the `Shimmer` widget in various places, such as loading indicators, placeholders for dynamic content, or even to make your app's UI elements stand out.

Here's a complete example of a Flutter widget that uses a shimmer animation as a loading indicator:

```dart
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shimmer Animation Example'),
        ),
        body: Center(
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300],
            highlightColor: Colors.grey[100],
            child: Container(
              width: 200.0,
              height: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
```

With this code, you'll see a shimmering loading indicator in the center of the screen.

Shimmer animations can greatly enhance the user experience in your Flutter app by providing engaging visual feedback during loading or emphasizing certain UI elements. You can use them creatively to make your app more attractive and user-friendly.


# Flutter Loading Animation

Welcome to the Flutter Loading Animation project, a demonstration of a loading animation with a radial progress indicator. This README provides an overview of the project, its features, and how to use it.

## Introduction

This Flutter application showcases a loading animation with a radial progress indicator. When you click the "Start" button, the animation begins, and the progress gradually increases to a specified value. The primary goal is to demonstrate how to create an interactive loading animation in Flutter.

## Key Features

- **Loading Animation:** This application features a loading animation with a radial progress indicator.

- **Dynamic Configuration:** You can customize the progress value and color of the loading animation.

- **Interactive Button:** There's an "Start" button that you can click to trigger the animation.


## Flutter Text Animation

### Introduction
Text Animations in flutter can be usually includes interpolation effects on a given text string. This can be put to good use for displaying text responses to the user. We can implement text animations in dart codes using `TweenAnimationBuilder` widget.

### Using `TweenAnimationBuilder`

1. **Import Dependencies**: Import the necessary Flutter libraries.

2. **Create an `TweenAnimationBuilder` Widget**: Use the TweenAnimationBuilder widget as the child of the necessary parent widget. Specify the necessary properties like the `tween` property, to set the initial and final sizes of the text font, mention the duration of the effect under the `duration` property, and finally for the `builder` property, return the Text widget on which you want to apply the effect. Please note that having a child widget is not compulsory for the TweenAnimationBuilder class.

3. **Trigger the Animation**: For triggering the animation, in the parameters for the `builder` property, change the `Object?` to the data type of the font size, and set the value of `fontSize` property in the Text widget to the corresponding parameter name of the object type.

Here's the sample code of an example: 

```dart
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 1.0,end: 30.0),
        duration: Duration(seconds: 2),
        builder: (Buildcontext context, double value, Widget? child) {
          return Text('Text Animation Effect',style: TextStyle(fontWeight: FontWeight.bold,fontSize: value));
        },
      )
    )
  )
}
```

4. **Customize the Animation**: You can customize the animation effects using the different available properties and making suitable changes in the widget which you are returning from the `TennAnimationBuilder` widget. To learn more about this widget you can explore the official dart docs at `https://api.flutter.dev/flutter/widgets/TweenAnimationBuilder-class.html`.
