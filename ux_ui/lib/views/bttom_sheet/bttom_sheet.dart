import 'package:flutter/material.dart';

class ButtonSheet extends StatelessWidget {
  const ButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const SizedBox(
                height: 400,
                child: Center(
                  child: Text("Center"),
                ),
              );
            },
          );
        },
        child: Text("Show dialog"),
      ),
    );
  }
}
