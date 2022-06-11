// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:crud2022/deatils.dart';

// class Show extends StatefulWidget {
//   const Show({Key? key}) : super(key: key);

//   @override
//   State<Show> createState() => _ShowState();
// }

// class _ShowState extends State<Show> {
//   Future<List> getData() async {
//     var url = "http://localhost:82/API/getdata.php";
//     final response = await http.get(Uri.parse(url));
//     return json.decode(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("My APK"),
//           backgroundColor: Colors.blue,
//         ),
//         body: FutureBuilder<List>(
//           future: getData(),
//           builder: (ctx, ss) {
//             if (ss.hasError) {
//               print("Error");
//             }
//             if (ss.hasData) {
//               return Items(list: ss.data);
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ));
//   }
// }

// class NewDada {}

// class Items extends StatelessWidget {
//   List list;
//   Items({this.list});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: list == null ? 0 : list.length,
//       itemBuilder: (ctx, i) {
//         return ListTile(
//           leading: Icon(Icons.message),
//           title: Text(list[i]["name"]),
//           subtitle: Text(list[i]["mobile"]),
//           onTap: () => Navigator.of(context).push(MaterialPageRoute(
//             builder: (BuildContext context) => Details(list: list, index: i),
//           )),
//         );
//       },
//     );
//   }
// }
