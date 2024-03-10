import 'package:flutter/material.dart';
import 'package:flutter_application_4/Common/MyRouters.dart';
import 'package:flutter_application_4/Pages/MyHomePage.dart';
import 'package:flutter_application_4/Widgets/MyForm.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Container(
        width: 300,
        height: 312,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*ElevatedButton(
            child: Text("My Home Page"),
            onPressed: () => {Navigator.pushNamed(context, ROUTE_HOME)},
          ),*/
              Text(
                "Inicia Sesion",
                style: TextStyle(fontSize: 28),
              ),
              Text(
                "Usa una contraseña Segura",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              MyForm()
            ]),
      ))),
    );
  }
}
