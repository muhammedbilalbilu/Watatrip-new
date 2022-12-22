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
    void Apideatil(
      String guest_name_1,
      String guest_name_2,
      String guest_name_3,
      // String? guest_name_4,
      // String? guest_name_5,
      // String? guest_name_6,
      // String? guest_name_7,
      // String? guest_name_8,
      // String? email_1,
      // String? email_2,
      // String? email_3,
      // String? email_4,
      // String? email_5,
      // String? email_6,
      // String? email_7,
      // String? email_8,
      // String? phone_no_1,
      // String? phone_no_2,
      // String? phone_no_3,
      // String? phone_no_4,
      // String? phone_no_5,
      // String? phone_no_6,
      // String? phone_no_7,
      // String? phone_no_8,
    ) async {
      print('workin');
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request(
          'POST', Uri.parse('https://demo2.conscor.com/api/store-booking'));
      request.body = json.encode({
        "activity_id": "2",
        "activity_date_time": "02-12-2022,02:35",
        "booking_id": "318",
        "guest_name_1": guest_name_1,
        "email_1": guest_name_1,
        "phone_no_1": guest_name_1,
        "guest_name_2": guest_name_2,
        "email_2": guest_name_2,
        "phone_no_2": guest_name_2,
        "guest_name_3": guest_name_3,
        "email_3": guest_name_3,
        "phone_no_3": guest_name_3,
        "guest_name_4": guest_name_1,
        "email_4": guest_name_1,
        "phone_no_4": guest_name_1,
        "guest_name_5": guest_name_1,
        "email_5": guest_name_1,
        "phone_no_5": guest_name_1,
        "amount": "2000",
        "guest_name_6": guest_name_1,
        "email_6": guest_name_1,
        "phone_no_6": guest_name_1,
        "amount": "2000",
        "guest_name_7": guest_name_1,
        "email_7": guest_name_1,
        "phone_no_7": guest_name_1,
        "amount": "2000",
        "guest_name_8": guest_name_1,
        "email_8": guest_name_1,
        "phone_no_8": guest_name_1,
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
                              Apideatil(
                                widget.name[0] == null ? "" : widget.name[0],
                                widget.name[1] == null ? "" : widget.name[1],
                                widget.name[2] == null ? "" : widget.name[2],
                              );
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
