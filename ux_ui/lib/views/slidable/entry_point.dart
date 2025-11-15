import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableScreen extends StatelessWidget {
  const SlidableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              onPressed: (context) {},
              icon: Icons.call,
              backgroundColor: Colors.blue,
            )
          ]),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {},
                icon: Icons.delete,
                backgroundColor: Colors.red,
                label: "Delete",
              ),
              SlidableAction(
                onPressed: (context) {},
                icon: Icons.edit,
                backgroundColor: Colors.green,
                label: "Edit",
              ),
            ],
          ),
          child: Container(
            color: Colors.grey[300],
            child: const ListTile(
              title: Text("Men Pisey"),
              subtitle: Text("0123456789"),
              leading: Icon(Icons.person),
            ),
          ),
        ),
      ),
    );
  }
}
