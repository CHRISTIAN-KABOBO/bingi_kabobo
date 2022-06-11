import 'package:flutter/material.dart';
import 'package:calcul/show.dart';
import 'package:http/http.dart' as http;

class Details extends StatefulWidget {
  //const Details({ Key? key }) : super(key: key);
  List list;
  int index;
  Details({required this.list, required this.index});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
