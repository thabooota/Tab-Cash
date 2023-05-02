import 'package:flutter/cupertino.dart';

class SlideRight extends PageRouteBuilder {
  final Widget page;
  SlideRight({required this.page})
      : super(
          pageBuilder: (context, animation, animationTwo) => page,

          // this returned is Responsible for animation
          transitionsBuilder: (context, animation, animationTwo, child) {
            const begin = Offset(0, 1);
            const end = Offset.zero;
            final tween = Tween(begin: begin, end: end);
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
        );
}

// ScaleTransition => begin and end must be double value
// RotationTransition => begin and end must be double value
// SlideTransition => begin and end must be offset value
// SizeTransition => Align(child: SizeTransition(sizeFactor: animation,child: child,),);
// FadeTransition => FadeTransition(opacity: animation,child: child,);
