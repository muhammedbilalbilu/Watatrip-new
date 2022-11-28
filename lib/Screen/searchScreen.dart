// import 'package:flutter/material.dart';

// import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

// import 'detailesScreen.dart';

// class Search extends StatefulWidget {
//   @override
//   State<Search> createState() => _SearchState();
// }

// TextEditingController textController = TextEditingController();

// class _SearchState extends State<Search> {
//   final List<Map<String, dynamic>> _allUsers = [
//     {"id": 1, "name": "Winfarm Nature Escape", "age": 'Outdoor/Campsit'},
//   ];

//   // This list holds the data for the list view
//   List<Map<String, dynamic>> _foundUsers = [];
//   @override
//   initState() {
//     _foundUsers = _allUsers;
//     super.initState();
//   }

//   // This function is called whenever the text field changes
//   void _runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allUsers;
//     } else {
//       results = _allUsers
//           .where((user) =>
//               user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }

//     setState(() {
//       _foundUsers = results;
//     });
//   }

//   void navigation() {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (context) => DetailScreen()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: FlutterFlowTheme.of(context).lineColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
//                 child: TextFormField(
//                     controller: textController,
//                     autofocus: true,
//                     obscureText: false,
//                     decoration: InputDecoration(
//                       hintText: 'Search ',
//                       hintStyle: FlutterFlowTheme.of(context).bodyText2,
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).lineColor,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(13),
//                       ),
//                       focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: FlutterFlowTheme.of(context).lineColor,
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(13),
//                       ),
//                       errorBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0xFFF10606),
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(13),
//                       ),
//                       focusedErrorBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Color(0xFFF10606),
//                           width: 1,
//                         ),
//                         borderRadius: BorderRadius.circular(13),
//                       ),
//                       filled: true,
//                       fillColor: FlutterFlowTheme.of(context).lineColor,
//                     ),
//                     style: FlutterFlowTheme.of(context).bodyText1,
//                     onChanged: (value) => _runFilter(value)),
//               ),
//             ),
//             Container(
//               height: 2,
//               width: double.infinity,
//               color: FlutterFlowTheme.of(context).lineColor,
//             ),
//             SizedBox(
//               height: 0,
//             ),
//             Expanded(
//               child: _foundUsers.isNotEmpty
//                   ? ListView.builder(
//                       itemCount: _foundUsers.length,
//                       itemBuilder: (context, index) {
//                         key:
//                         ValueKey(_foundUsers[index]["id"]);

//                         return Padding(
//                           padding: const EdgeInsets.only(left: 10, right: 10),
//                           child: ListTile(
//                             title: GestureDetector(
//                               onTap: navigation,
//                               child: Text(
//                                 _foundUsers[index]['name'],
//                                 style: TextStyle(
//                                     fontSize: 23,
//                                     fontWeight: FontWeight.w500,
//                                     fontFamily: 'Open Sans'),
//                               ),
//                             ),
//                             subtitle: Text(_foundUsers[index]['age'].toString(),
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500,
//                                     fontFamily: 'Open Sans')),
//                           ),
//                         );
//                       },
//                     )
//                   : Text(
//                       'No results found',
//                       style: TextStyle(fontSize: 24),
//                     ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
