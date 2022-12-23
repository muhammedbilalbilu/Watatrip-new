import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:watatrip/Screen/bookingCart.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class TourerBookingScreen extends StatefulWidget {
  List name;
  List email;
  List phone;
  int index;
  bool datebook;
  final apidata;
  var date;

  TourerBookingScreen(
      {Key? key,
      required this.name,
      required this.email,
      required this.phone,
      required this.index,
      required this.apidata,
      required this.datebook,
      required this.date})
      : super(key: key);

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
    postData(List guest_name_1, List guest_email_1, List guest_phone_1) async {
      try {
        for (int i = guest_name_1.length; i < 5; i++) {
          guest_name_1.add("Null");
        }
        for (int i = guest_email_1.length; i < 5; i++) {
          guest_email_1.add("Null");
        }
        for (int i = guest_phone_1.length; i < 5; i++) {
          guest_phone_1.add("Null");
        }
        var response = await http.post(
            Uri.parse("https://demo2.conscor.com/api/store-booking"),
            body: {
              "activity_id": "2",
              "activity_date_time": "02-12-2022,02:35",
              "booking_id": "318",
              "guest_name_1": guest_name_1[0].toString(),
              "email_1": guest_email_1[0].toString(),
              "phone_no_1": guest_phone_1[0].toString(),
              "guest_name_2": guest_name_1[1].toString(),
              "email_2": guest_email_1[1].toString(),
              "phone_no_2": guest_phone_1[1].toString(),
              "guest_name_3": guest_name_1[2].toString(),
              "email_3": guest_email_1[2].toString(),
              "phone_no_3": guest_phone_1[2].toString(),
              "guest_name_4": guest_name_1[3].toString(),
              "email_4": guest_email_1[3].toString(),
              "phone_no_4": guest_phone_1[3].toString(),
              "guest_name_5": guest_name_1[4].toString(),
              "email_5": guest_email_1[4].toString(),
              "phone_no_5": guest_phone_1[4].toString(),
              "amount": "2000"
            });
        print(response.body);
      } catch (e) {
        e.toString();
      }
    }

    final now = DateTime.now();
    int count;
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
                                          widget.apidata.name,
                                          maxLines: 1,
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
                                          alignment:
                                              AlignmentDirectional(0.3, 0),
                                          child: widget.datebook
                                              ? Text(
                                                  '${now.year}-${now.month}-${now.day} 6:00 AM',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                                )
                                              : Text(
                                                  '${widget.date} 6:00 AM',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                                )),
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
                                itemBuilder: (context, number) {
                                  count = number + 1;

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
                                              'Guest $count',
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
                                              widget.name[number],
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
                                              widget.email[number],
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
                                              widget.phone[number],
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
                                            height: 1,
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
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 0.1,
                              decoration: BoxDecoration(
                                color: Color(0xFF9F9F9F),
                              ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Text(
                                            'TOTAL',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                        child: Align(
                                          alignment: AlignmentDirectional(1, 0),
                                          child: Text(
                                            'PHP ${widget.apidata.offerPrice}',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F5862),
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 28, right: 28, bottom: 20),
                              child: InkWell(
                                onTap: () {
                                  postData(
                                      widget.name.toList(),
                                      widget.email.toList(),
                                      widget.phone.toList());
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
                            ),
                          ],
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
