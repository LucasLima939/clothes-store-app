import 'package:flutter/material.dart';

class ResizeImage extends StatefulWidget {
  _ResizeImageState createState() => _ResizeImageState();
}

class _ResizeImageState extends State<ResizeImage>
    with SingleTickerProviderStateMixin {
  //Uses a Ticker Mixin for Animations
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                2)); //specify the duration for the animation & include `this` for the vsyc
    _animation = Tween<double>(begin: 1.0, end: 3.5).animate(
        _animationController); //use Tween animation here, to animate between the values of 1.0 & 2.5.

    _animation.addListener(() {
      //here, a listener that rebuilds our widget tree when animation.value chnages
      setState(() {});
    });

    _animation.addStatusListener((status) {
      //AnimationStatus gives the current status of our animation, we want to go back to its previous state after completing its animation
      if (status == AnimationStatus.completed) {
        _animationController
            .reverse(); //reverse the animation back here if its completed
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Resize Image Example'),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              _animationController
                  .forward(); // tapping the button, starts the animation.
            },
            child: Image.asset(
              'assets/images/umbrella.png',
              height: 120.0 * _animation.value,
              width: 80.0 * _animation.value,
            )),
      ),
    );
  }
}
