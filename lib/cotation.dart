import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cotation extends StatefulWidget {
  const cotation({Key? key}) : super(key: key);

  @override
  State<cotation> createState() => _cotationState();
}

class _cotationState extends State<cotation> {
  double n1 = 0;
  double n2 = 0;
  double n3 = 0;
  double n4 = 0;
  double result = 0;

  void pourcentage() {
    n1 = double.parse(nombre1.text) / 2;
    n2 = double.parse(nombre2.text) * 2 / 4;
    n3 = double.parse(nombre3.text) / 3;
    n4 = double.parse(nombre4.text) * 2 / 7;
    result = (n1 + n2 + n3 + n4) * 100 / 80;
    Reponse.text = result.toString();
    if (result > 49 && result < 70) {
      mention.text = "S";
    } else if (result > 69 && result < 80) {
      mention.text = "D";
    } else if (result > 79 && result < 95) {
      mention.text = "GD";
    } else if (result < 50) {
      mention.text = "A";
    } else {
      mention.text = "innacptable";
    }
  }

  TextEditingController nombre1 = new TextEditingController();
  TextEditingController nombre2 = new TextEditingController();
  TextEditingController Reponse = new TextEditingController();
  TextEditingController nombre3 = new TextEditingController();
  TextEditingController nombre4 = new TextEditingController();
  TextEditingController mention = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COTATION"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
            width: 300,
            child: Column(
              children: [
                Row(
                  children: [
                    new Text(
                      "Algorithmique /40",
                      style: TextStyle(
                          fontFamily: 'times new roman', fontSize: 14),
                    ),
                    new SizedBox(
                      width: 20,
                    ),
                    new Expanded(
                      child: TextField(
                        controller: nombre1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "point",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    new Text(
                      "Mathematique /50",
                      style: TextStyle(
                          fontFamily: 'times new roman', fontSize: 14),
                    ),
                    new SizedBox(
                      width: 20,
                    ),
                    new Expanded(
                      child: TextField(
                        controller: nombre2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "point",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    new Text(
                      "Language C /60",
                      style: TextStyle(
                          fontFamily: 'times new roman', fontSize: 14),
                    ),
                    new SizedBox(
                      width: 20,
                    ),
                    new SizedBox(
                      width: 20,
                    ),
                    new Expanded(
                      child: TextField(
                        controller: nombre3,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "point",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    new Text(
                      "Statistique /70",
                      style: TextStyle(
                          fontFamily: 'times new roman', fontSize: 14),
                    ),
                    new SizedBox(
                      width: 20,
                    ),
                    new SizedBox(
                      width: 20,
                    ),
                    new SizedBox(
                      width: 10,
                    ),
                    new Expanded(
                      child: TextField(
                        controller: nombre4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "point",
                        ),
                      ),
                    ),
                  ],
                ),
                new SizedBox(
                  height: 20,
                ),
                new Container(
                  width: 100,
                  child: RaisedButton(
                    onPressed: () {
                      pourcentage();
                    },
                    child: Text("Calculer"),
                    color: Colors.blue,
                  ),
                ),
                new TextField(
                  controller: Reponse,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Pourcentage"),
                ),
                new TextField(
                  controller: mention,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: ""),
                ),
              ],
            )),
      ),
    );
  }
}
