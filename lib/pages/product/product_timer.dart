import 'package:flutter/material.dart';
 final endTime = DateTime.parse("2019-02-14");
 final now = DateTime.now();
 final difference = endTime.difference(now).inSeconds;
 
class ProductTimer extends StatefulWidget {
  @override
  _ProductTimerState createState() => _ProductTimerState();
}

class _ProductTimerState extends State<ProductTimer> with TickerProviderStateMixin {
  AnimationController animationController;

  String get timerString {
    Duration duration =
        animationController.duration * animationController.value;
    return '${duration.inDays}:${duration.inHours  % 24}:${duration.inMinutes  % 60}:${(duration.inSeconds % 60)
        .toString()
        .padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds:difference));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: FractionalOffset.center,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Stack(
                    children: <Widget>[
            
                      Align(
                        alignment: FractionalOffset.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "",
                              style: Theme.of(context).textTheme.subhead,
                            ),
                            AnimatedBuilder(
                                animation: animationController,
                                builder: (_, Widget child) {
                                  return Text(
                                    timerString,
                                    style: TextStyle(fontSize: 15.0),
                                  );
                                })
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    child: AnimatedBuilder(
                        animation: animationController,
                        builder: (_, Widget child) {
                          return Icon(animationController.isAnimating
                              ? Icons.pause
                              : Icons.play_arrow);
                        }),
                    onPressed: () {
                      print(difference);
                      print(endTime);
                      print(now);
                      if (animationController.isAnimating) {
                        animationController.stop();
                      } else {
                        animationController.reverse(
                            from: animationController.value == 0.0
                                ? 1.0
                                : animationController.value);
                      }
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

