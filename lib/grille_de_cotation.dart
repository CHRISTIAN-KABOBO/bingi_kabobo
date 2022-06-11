import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grille extends StatefulWidget {
  const grille({Key? key}) : super(key: key);

  @override
  State<grille> createState() => _grilleState();
}

class _grilleState extends State<grille> {
  String selectedValue = "+";
  double result = 0;
  double n1 = 0;
  double n2 = 0;

  TextEditingController txtnombre1 = new TextEditingController();
  TextEditingController txtnombre2 = new TextEditingController();
  TextEditingController txtReponse = new TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> MenuItems = [
      DropdownMenuItem(
        child: Text("+"),
        value: "+",
      ),
      DropdownMenuItem(
        child: Text("-"),
        value: "-",
      ),
      DropdownMenuItem(
        child: Text("*"),
        value: "*",
      ),
      DropdownMenuItem(
        child: Text("/"),
        value: "/",
      ),
    ];
    return MenuItems;
  }

  void calculer(String s) {
    n1 = double.parse(txtnombre1.text);
    n2 = double.parse(txtnombre2.text);
    if (s == "+") {
      result = n1 + n2;
      txtReponse.text = result.toString();
    } else if (s == "-") {
      result = n1 - n2;
      txtReponse.text = result.toString();
    } else if (s == "*") {
      result = n1 * n2;
      txtReponse.text = result.toString();
    } else if (s == "/") {
      result = n1 / n2;
      txtReponse.text = result.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CALCUL'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: ListView(
              children: [
                // Row(children: [

                // ],)
                new TextField(
                  controller: txtnombre1,
                  decoration: InputDecoration(
                      labelText: "Nombre1", hintText: "Nombre1"),
                ),
                new DropdownButton(
                  items: dropdownItems,
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  style: TextStyle(color: Colors.black),
                ),
                new TextField(
                  controller: txtnombre2,
                  decoration: InputDecoration(
                      labelText: "Nombre2", hintText: "Nombre2"),
                ),
                new RaisedButton(
                  onPressed: () {
                    calculer(selectedValue);
                  },
                  child: Text("Calculer"),
                  color: Colors.blue,
                ),
                new TextField(
                  controller: txtReponse,
                  decoration: InputDecoration(
                      labelText: "Reponse", hintText: "Reponse"),
                )
              ],
            ),
          ),
        ));
  }
}
