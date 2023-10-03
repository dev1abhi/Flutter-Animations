# Flutter-Animations

<p align="center">
    <a href="https://hacktoberfest.com/" target="_blank">
    	<img src="https://miro.medium.com/v2/resize:fit:1400/0*McOGR_vW3LivYNor.png" width="800px" height="400px">
    </a>
</p>



### We are trying to make a flutter app, which has example of every flutter animation available.

## How to contribute to this project

<p align="center">
  <img src="https://github.com/dev1abhi/Flutter-Animations/assets/132396257/67c6ab3c-9b63-4f60-bbef-345e153a0e09" width="30%" height="30%">
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

There are multiple types of animations which can be implemented in Flutter apps. Deciding which animation is the best for your app depends upon a lot of factors, like whether the animationns is code-based or drawing-based, the life cycle of the animations, etc. To get an idea for the best-suited animations for your app, watch this video from the official Flutter YouTube channel: https://www.youtube.com/watch?v=GXIJJkq_H8g&list=PLjxrf2q8roU2v6UqYlt_KPaXlnjbYySua

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
