// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:watatrip/Screen/bookingCart.dart';
// import 'package:http/http.dart' as http;
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../main.dart';

// class TourerBookingScreen extends StatefulWidget {
//   List name;
//   List email;
//   List phone;

//   TourerBookingScreen({
//     Key? key,
//     required this.name,
//     required this.email,
//     required this.phone,
//   }) : super(key: key);

//   @override
//   _TourerBookingWidgetState createState() => _TourerBookingWidgetState();
// }

// class _TourerBookingWidgetState extends State<TourerBookingScreen> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     Apideatil(List guest_name_1, List email, List phone) async {
//       for (int i = guest_name_1.length; i < 8; i++) {
//         guest_name_1.add("");
//       }
//       for (int i = email.length; i < 8; i++) {
//         guest_name_1.add("");
//       }
//       for (int i = phone.length; i < 8; i++) {
//         guest_name_1.add("");
//       }
//       var headers = {'Content-Type': 'application/json'};
//       var request = http.Request(
//           'POST', Uri.parse('https://demo2.conscor.com/api/store-booking'));
//       request.body = json.encode({
//         "activity_id": "2",
//         "activity_date_time": "02-12-2022,02:35",
//         "booking_id": "318",
//         "guest_name_1": guest_name_1[0],
//         "email_1": email[0],
//         "phone_no_1": phone[0],
//         "guest_name_2": guest_name_1[1],
//         "email_2": email[1],
//         "phone_no_2": phone[1],
//         "guest_name_3": guest_name_1[2],
//         "email_3": email[2],
//         "phone_no_3": phone[2],
//         "guest_name_4": guest_name_1[3],
//         "email_4": email[3],
//         "phone_no_4": phone[3],
//         "guest_name_5": guest_name_1[4],
//         "email_5": email[4],
//         "phone_no_5": phone[4],
//         "amount": "2000",
//         "guest_name_6": guest_name_1[5],
//         "email_6": email[5],
//         "phone_no_6": phone[5],
//         "amount": "2000",
//         "guest_name_7": guest_name_1[6],
//         "email_7": email[6],
//         "phone_no_7": phone[6],
//         "amount": "2000",
//         "guest_name_8": guest_name_1[7],
//         "email_8": email[7],
//         "phone_no_8": phone[7],
//         "amount": "192922522",
//       });
//       request.headers.addAll(headers);

//       http.StreamedResponse response = await request.send();

//       if (response.statusCode == 200) {
//         print(await response.stream.bytesToString());
//       } else {
//         print(response.reasonPhrase);
//       }
//     }

//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   decoration: BoxDecoration(),
//                   child: Container(
//                     width: 100,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       color: FlutterFlowTheme.of(context).secondaryBackground,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 40,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context)
//                                 .secondaryBackground,
//                           ),
//                           child: Align(
//                             alignment: AlignmentDirectional(-1, 0),
//                             child: Padding(
//                               padding:
//                                   EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
//                               child: Icon(
//                                 Icons.arrow_back,
//                                 color: FlutterFlowTheme.of(context).lineColor,
//                                 size: 24,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 5, right: 5),
//                           child: Container(
//                             width: MediaQuery.of(context).size.width,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   'Your Booking',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                         fontFamily: 'Open Sans',
//                                         fontSize: 25,
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: 130,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFE5E5E5),
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Container(
//                                 width: MediaQuery.of(context).size.width,
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: FlutterFlowTheme.of(context).lineColor,
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       5, 0, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 0, 3, 0),
//                                         child: Icon(
//                                           Icons.location_on_outlined,
//                                           color: Color(0xFF0F5862),
//                                           size: 35,
//                                         ),
//                                       ),
//                                       Align(
//                                         alignment: AlignmentDirectional(0.3, 0),
//                                         child: Text(
//                                           'Windfarm Nature Escape',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyText1
//                                               .override(
//                                                 fontFamily: 'Open Sans',
//                                                 fontSize: 20,
//                                               ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: MediaQuery.of(context).size.width,
//                                 height: 1,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xFFCDCDCD),
//                                 ),
//                               ),
//                               Container(
//                                 width: MediaQuery.of(context).size.width,
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: FlutterFlowTheme.of(context).lineColor,
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       5, 0, 0, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 0, 3, 0),
//                                         child: Icon(
//                                           Icons.event_note,
//                                           color: Color(0xFF0F5862),
//                                           size: 35,
//                                         ),
//                                       ),
//                                       Align(
//                                         alignment: AlignmentDirectional(0.3, 0),
//                                         child: Text(
//                                           'Windfarm Nature Escape',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyText1
//                                               .override(
//                                                 fontFamily: 'Open Sans',
//                                                 fontSize: 20,
//                                               ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Container(
//                             width: MediaQuery.of(context).size.width,
//                             height: 100,
//                             decoration: BoxDecoration(
//                               color: FlutterFlowTheme.of(context)
//                                   .secondaryBackground,
//                             ),
//                             child: ListView.builder(
//                                 itemCount: widget.name.length,
//                                 itemBuilder: (context, index) {
//                                   return Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         5, 10, 5, 5),
//                                     child: Container(
//                                       width: MediaQuery.of(context).size.width,
//                                       height: 260,
//                                       decoration: BoxDecoration(
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryBackground,
//                                       ),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 45,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .secondaryBackground,
//                                             ),
//                                             child: Text(
//                                               'Guest ',
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 25,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 30,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryBtnText,
//                                             ),
//                                             child: Text(
//                                               'Guest\'s  Name',
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 16,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 40,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryBtnText,
//                                             ),
//                                             child: Text(
//                                               widget.name[index],
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 20,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 30,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryBtnText,
//                                             ),
//                                             child: Text(
//                                               'Email',
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 16,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 40,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryBtnText,
//                                             ),
//                                             child: Text(
//                                               widget.email[index],
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 20,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 30,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryBtnText,
//                                             ),
//                                             child: Text(
//                                               'Mobile Number',
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 16,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 40,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryBtnText,
//                                             ),
//                                             child: Text(
//                                               widget.phone[index],
//                                               style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                         fontFamily: 'Open Sans',
//                                                         fontSize: 20,
//                                                       ),
//                                             ),
//                                           ),
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                 .size
//                                                 .width,
//                                             height: 2,
//                                             decoration: BoxDecoration(
//                                               color: Color(0xFF9F9F9F),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 }),
//                           ),
//                         ),
//                         Padding(
//                           padding:
//                               EdgeInsets.only(left: 28, right: 28, bottom: 20),
//                           child: InkWell(
//                             onTap: () {
//                               Apideatil(widget.name.toList(),
//                                   widget.email.toList(), widget.phone.toList());
//                               Navigator.pushNamed(
//                                   context, CartDetailsScreen.routeName);
//                             },
//                             child: Container(
//                               width: MediaQuery.of(context).size.width,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFFFB100),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: Align(
//                                 alignment: AlignmentDirectional(-0.05, 0),
//                                 child: Text(
//                                   'Payment',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                         fontFamily: 'Poppins',
//                                         color: FlutterFlowTheme.of(context)
//                                             .primaryBtnText,
//                                         fontSize: 20,
//                                       ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:watatrip/Screen/bookingCart.dart';
import 'package:http/http.dart' as http;
import '../flutter_flow/flutter_flow_theme.dart';
import '../main.dart';

class TourerBookingScreen extends StatefulWidget {
  List name;
  List email;
  List phone;

  TourerBookingScreen({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
  }) : super(key: key);

  @override
  _TourerBookingWidgetState createState() => _TourerBookingWidgetState();
}

class _TourerBookingWidgetState extends State<TourerBookingScreen> {
  @override
  void initState() {
    super.initState();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Apideatil(List guest_name_1, List email_1, List phone_no_1) async {
      for (int i = guest_name_1.length; i < 8; i++) {
        guest_name_1.add("Null");
      }
      for (int i = email_1.length; i < 8; i++) {
        email_1.add("Null");
      }
      for (int i = phone_no_1.length; i < 8; i++) {
        phone_no_1.add("Null");
      }
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request(
          'POST', Uri.parse('https://demo2.conscor.com/api/store-booking'));
      request.body = json.encode({
        "activity_id": "2",
        "activity_date_time": "02-12-2022,02:35",
        "booking_id": "318",
        "guest_name_1": guest_name_1[0],
        "email_1": email_1[0],
        "phone_no_1": phone_no_1[0],
        "guest_name_2": guest_name_1[1],
        "email_2": email_1[1],
        "phone_no_2": phone_no_1[1],
        "guest_name_3": guest_name_1[2],
        "email_3": email_1[2],
        "phone_no_3": phone_no_1[2],
        "guest_name_4": guest_name_1[3],
        "email_4": email_1[3],
        "phone_no_4": phone_no_1[3],
        "guest_name_5": guest_name_1[4],
        "email_5": email_1[4],
        "phone_no_5": phone_no_1[4],
        "amount": "2000",
        "guest_name_6": guest_name_1[5],
        "email_6": email_1[5],
        "phone_no_6": phone_no_1[5],
        "amount": "2000",
        "guest_name_7": guest_name_1[6],
        "email_7": email_1[6],
        "phone_no_7": phone_no_1[6],
        "amount": "2000",
        "guest_name_8": guest_name_1[7],
        "email_8": email_1[7],
        "phone_no_8": phone_no_1[7],
        "amount": "192922522",
      });
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(),
                  child: Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Icon(
                                Icons.arrow_back,
                                color: FlutterFlowTheme.of(context).lineColor,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Your Booking',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 25,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 3, 0),
                                        child: Icon(
                                          Icons.location_on_outlined,
                                          color: Color(0xFF0F5862),
                                          size: 35,
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0.3, 0),
                                        child: Text(
                                          'Windfarm Nature Escape',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontSize: 20,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDCDCD),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 3, 0),
                                        child: Icon(
                                          Icons.event_note,
                                          color: Color(0xFF0F5862),
                                          size: 35,
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0.3, 0),
                                        child: Text(
                                          'Windfarm Nature Escape',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                fontSize: 20,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: ListView.builder(
                                itemCount: widget.name.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 10, 5, 5),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 260,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              'Guest ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 25,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Text(
                                              'Guest\'s  Name',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Text(
                                              widget.name[index],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Text(
                                              'Email',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Text(
                                              widget.email[index],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Text(
                                              'Mobile Number',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 16,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Text(
                                              widget.phone[index],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 2,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF9F9F9F),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 28, right: 28, bottom: 20),
                          child: InkWell(
                            onTap: () {
                              Apideatil(widget.name.toList(),
                                  widget.email.toList(), widget.phone.toList());
                              Navigator.pushNamed(
                                  context, CartDetailsScreen.routeName);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFB100),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-0.05, 0),
                                child: Text(
                                  'Payment',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 20,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
