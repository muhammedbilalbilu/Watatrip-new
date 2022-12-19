// import 'package:flutter/material.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:watatrip/Screen/homePage.dart';




// class BottomBar extends StatefulWidget {
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int currentTap = 0;
//   List<Widget> screens = [
//     HomePage(),
//     Home2(),
//     Home3(),
//     Home4(),
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = HomePage();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(bucket: bucket, child: currentScreen),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Color(0xFF0F5862),
//         shape: CircleBorder(),
//         child: Icon(
//           Icons.add,
//           color: Colors.white,
//         ),
//         onPressed: () {},
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         notchMargin: 10,
//         child: Container(
//           height: 45,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 80,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HomePage();
//                         currentTap = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home_outlined,
//                           size: 35,
//                           color: currentTap == 1
//                               ? Color(0xFFAEAEAE)
//                               : Color(0xFFAEAEAE),
//                         )
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 100,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Home4();
//                         currentTap = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.calendarDays,
//                           size: 30,
//                           color: currentTap == 0
//                               ? Color(0xFFAEAEAE)
//                               : Color(0xFFAEAEAE),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//               //
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 10,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Home();
//                         currentTap = 2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.comments,
//                           size: 30,
//                           color: currentTap == 2
//                               ? Color(0xFFAEAEAE)
//                               : Color(0xFFAEAEAE),
//                         )
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 80,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Home2();
//                         currentTap = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           FontAwesomeIcons.circleUser,
//                           size: 30,
//                           color: currentTap == 3
//                               ? Color(0xFFAEAEAE)
//                               : Color(0xFFAEAEAE),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
