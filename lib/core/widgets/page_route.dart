import 'package:flutter/material.dart';


class AnimatedNoInternetView extends StatefulWidget {
  final Widget child;
  final Offset beginOffset;
  const AnimatedNoInternetView({super.key, required this.child, required this.beginOffset});

  @override
  _AnimatedNoInternetViewState createState() =>
      _AnimatedNoInternetViewState();
}

class _AnimatedNoInternetViewState extends State<AnimatedNoInternetView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500), // Set the duration for the animation
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: widget.beginOffset, // Start position (off the screen to the right)
      end: Offset.zero, // End position (center of the screen)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut, // You can change the curve for different animations
    ));

    // Start the animation when the widget is first displayed
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller to free up resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use SlideTransition to apply the slide animation
    return Scaffold(
      body: SlideTransition(
        position: _slideAnimation,
        child: widget.child,
      ),
    );
  }
}


