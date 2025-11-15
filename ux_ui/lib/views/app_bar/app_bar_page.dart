import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    extendBodyBehindAppBar: true, //
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Appbar"),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Image.network(
        "https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
      ),
    );
  }
}
