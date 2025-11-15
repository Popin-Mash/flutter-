import 'package:flutter/material.dart';
import 'package:ux_ui/views/scrolling/widget/scrolling_widget.dart';

class ScrollingExperience extends StatelessWidget {
  const ScrollingExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () => const ScrollingWidget(),
              child: const Center(
                child: Text("Center"),
              ),
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const ScrollingWidget(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(

                          opacity: animation,
                          child: child,
                        );
                      },
                    )),
                child: Text("Ce"))
          ],
        ),
      ),
    );
  }
}
