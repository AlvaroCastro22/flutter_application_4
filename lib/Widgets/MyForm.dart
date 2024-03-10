import 'package:flutter/material.dart';
import 'package:flutter_application_4/Common/MyRouters.dart';
import 'package:flutter_application_4/pages/MyHomePage.dart';

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    save() {
      if (formKey.currentState!.validate()) {
        //print(nameCtrl.text);

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePage(
                      name: nameCtrl,
                    )));
        //formKey.currentState?.reset();
      }
    }

    return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
                controller: nameCtrl,
                validator: (value) {
                  if (value?.length == 0) {
                    return "Porfavor llenar su nombre";
                  }
                  if (value == "test") {
                    return "El nombre de usuario no puede ser test";
                  }
                  return null;
                },
                decoration: InputDecoration(labelText: "Usuario")),
            TextFormField(
              controller: passwordCtrl,
              decoration: InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,
              validator: (value) {
                if (value?.length == 0) {
                  return "Porfavor ingresar su contraseña";
                }
                if (value!.contains("@")) {
                  return "La contraseña no puede incluir @";
                }
                return null;
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              child: ElevatedButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, ROUTE_HOME);
                    save();
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(280, 48)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 65, 135, 44))),
                  child: Text(
                    "Iniciar Sesion",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ));
  }
}
