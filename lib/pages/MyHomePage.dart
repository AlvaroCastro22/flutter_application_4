import 'package:flutter/material.dart';
import 'package:flutter_application_4/Widgets/MyAppBar.dart';
import 'package:flutter_application_4/Widgets/MyBottomBar.dart';
import 'package:flutter_application_4/Widgets/MyContent.dart';
import 'package:flutter_application_4/Widgets/MyImage.dart';
import 'package:flutter_application_4/Widgets/MyText.dart';
import 'package:flutter_application_4/Widgets/myFloatingActionButton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.name});
  final TextEditingController name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final String titulo = widget.name.text;
    return Scaffold(
        appBar: MyAppBar(
          name: titulo,
        ),
        bottomNavigationBar: MyBottomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [MyImage(), MyContent()],
          ),
        )));
  }
}
