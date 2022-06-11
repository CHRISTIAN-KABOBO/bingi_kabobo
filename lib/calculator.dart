import 'package:flutter/material.dart';

class Calculators extends StatefulWidget {
  const Calculators({ Key? key }) : super(key: key);

  @override
  State<Calculators> createState() => _CalculatorsState();
}

class _CalculatorsState extends State<Calculators> {
  TextEditingController txtnbr1= new TextEditingController();
  TextEditingController txtnbr2= new TextEditingController();
  TextEditingController txtoperation= new TextEditingController();
  TextEditingController txtresult= new TextEditingController();

  void addition(){
    int n1=int.parse(txtnbr1.text);
    int n2=int.parse(txtnbr2.text);
  

    if(txtoperation.text == "+"){
      txtresult.text=(n1+n2).toString();
    }else if(txtoperation.text == "-"){
      txtresult.text=(n1-n2).toString();
    }else if(txtoperation.text == "*"){
      txtresult.text=(n1*n2).toString();
    }else if(txtoperation.text == "/"){
      txtresult.text=(n1/n2).toString();
    }
  }

  var valueChoose;
  List listItem=[
    "+","-","*","/"
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        title: Text("Calculatrice"),
        backgroundColor: Colors.blue,
       ),
      //  body: Center(
      //  child:Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child:Container(
      //         padding: EdgeInsets.only(left:16,right:16),
      //         decoration:BoxDecoration(
      //           border:Border.all(color:Colors.grey,width:1),
      //           borderRadius: BorderRadius.circular(15)
      //         ),
      //     child:DropdownButton(
      //       hint:Text("Select Item: "),
      //       dropdownColor: Colors.white,
      //       icon: Icon(Icons.arrow_drop_down),
      //       iconSize:36,
      //       isExpanded:true,
      //       underline:SizedBox(),
      //       style:TextStyle(
      //         color: Colors.black,
      //         fontSize:22,
      //       ),
      //       value:valueChoose,
      //       onChanged:(newValue){
      //         setState((){
      //           valueChoose = newValue;
      //         });
      //       },
      //       items:listItem.map((valueItem){
      //         return DropdownMenuItem(
      //           value: valueItem,
      //           child: Text(valueItem),
      //           );
      //       }).toList(),
      //     ),
      //   ),
      // ),
      //    ),
       body: ListView(
        children: [
          new TextField(
            controller: txtnbr1,
            decoration: InputDecoration(
              labelText: "Nombre 1",
              hintText: "Entrer votre nom"
            ),
          ),
           SizedBox(width: 20)
          ,          
          new TextField(
            controller: txtoperation,
            decoration: InputDecoration(
              labelText: "Operation",
              hintText: "Entrer votre operation"
            ),
          ),
          SizedBox(width: 20)
          ,
          new TextField(
            controller: txtnbr2,
            decoration: InputDecoration(
              labelText: "Nombre 2",
              hintText: "Entrer votre nombre2"
            ),
          ),
          SizedBox(width: 20)
          ,        
           RaisedButton(
            onPressed: (){addition();},
            child: Text("Enregistrer"),
            color: Colors.blue,
          ) ,
           SizedBox(width: 20)
          ,
          new TextField(
            controller: txtresult,
          
            enabled: true,
            decoration: InputDecoration(
              labelText: "Resultat",
              hintText: "Entrer votre reponse"
            ),
          )         
        ],
      ),
    );
  }
}