import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TourOfferJoinActivityWidget extends StatefulWidget {
  const TourOfferJoinActivityWidget({Key? key}) : super(key: key);

  @override
  _TourOfferJoinActivityWidgetState createState() =>
      _TourOfferJoinActivityWidgetState();
}

class _TourOfferJoinActivityWidgetState
    extends State<TourOfferJoinActivityWidget> {
  int num = 0;
  TextEditingController name = TextEditingController();

//Tax Date
  TextEditingController firstDate = TextEditingController();
  TextEditingController secondDate = TextEditingController();
  TextEditingController lastDate = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    firstDate.dispose();
    secondDate.dispose();
    lastDate.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  List allTextField = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allTextField = [
      {
        "label": "Guest 1",
        "keyforbackend": "first_date_tax",
        "value": firstDate,
        ' text_field-new': TextFormField(
          decoration: InputDecoration(hintText: 'Name'),
          controller: firstDate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Required First Date ';
            }
            return null;
          },
        ),
        "text_field": TextFormField(
          decoration: InputDecoration(hintText: 'Name'),
          controller: firstDate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Required First Date ';
            }
            return null;
          },
        ),
      },
      {
        "label": "Guest 2",
        "keyforbackend": "second_date_tax",
        "value": secondDate,
        ' text_field-new': TextFormField(
          decoration: InputDecoration(hintText: 'Name'),
          controller: firstDate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Required First Date ';
            }
            return null;
          },
        ),
        "text_field": TextFormField(
          decoration: InputDecoration(hintText: 'Name'),
          controller: secondDate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Required Second Date ';
            }
            return null;
          },
        ),
      },
      {
        "label": "Guest3",
        "keyforbackend": "last_date_tax",
        "value": lastDate,
        ' text_field-new': TextFormField(
          decoration: InputDecoration(hintText: 'Name'),
          controller: firstDate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Required First Date ';
            }
            return null;
          },
        ),
        "text_field": TextFormField(
          decoration: InputDecoration(hintText: 'Name'),
          controller: lastDate,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Required last Date ';
            }
            return null;
          },
        ),
      },
    ];
  }

  List displayTextField = [];

  addTextField() {
    print("addTextField");
    num++;
    print(num);

    setState(() {
      if (allTextField.length == displayTextField.length) {
        print("Same");
        return;
      } else {
        displayTextField.add(allTextField[displayTextField.length]);
      }
    });
  }

  removeTextField() {
    num--;
    print(num);
    print("removeTextField");

    setState(() {
      if (displayTextField.isNotEmpty) {
        displayTextField.removeLast();
      }
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int? countControllerValue;

  @override
  Widget build(BuildContext context) {
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
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.arrow_back_outlined,
                                color: FlutterFlowTheme.of(context).lineColor,
                                size: 30,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                              child: Text(
                                'Activity',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F1F1),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F1F1),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Color(0xFF0F5862),
                                        size: 35,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          'Windfarm Nature Escape',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF007AFF),
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
                                  color: Color(0xFF9F9F9F),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F1F1),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.handshake,
                                        color: Color(0xFF0F5862),
                                        size: 30,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6, 0, 3, 0),
                                        child: Text(
                                          'Tiendesites',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF007AFF),
                                                fontSize: 20,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        '(Meetup Location)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 17,
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
                                  color: Color(0xFF9F9F9F),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F1F1),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.event_note_rounded,
                                        color: Color(0xFF0F5862),
                                        size: 35,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          'Sat Oct, 15,2022 6:00 AM',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
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
                                  color: Color(0xFF9F9F9F),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F1F1),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.people_outline,
                                        color: Color(0xFF0F5862),
                                        size: 35,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 0),
                                        child: Text(
                                          '8-10 PAX',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
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
                        Row(
                          children: [
                            Align(
                                alignment: AlignmentDirectional(0.1, 0),
                                child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 0, 0),
                                    child: Container(
                                        width: 100,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9F9F9F),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 33,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                border: Border.all(
                                                  color: Color(0xFF9F9F9F),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -0.55, -1),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30,
                                                  borderWidth: 1,
                                                  buttonSize: 60,
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 20,
                                                  ),
                                                  onPressed: () {
                                                    addTextField();
                                                  },
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 33,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                border: Border.all(
                                                  color: Color(0xFF9F9F9F),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.1, 0.3),
                                                child: Text(
                                                  '1',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 33,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                border: Border.all(
                                                  color: Color(0xFF9F9F9F),
                                                ),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -0.25, 0.1),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30,
                                                  borderWidth: 1,
                                                  buttonSize: 60,
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.minus,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 20,
                                                  ),
                                                  onPressed: () {
                                                    removeTextField();
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        )))),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 10),
                              child: Text('Guest',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 25,
                                      )),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Form(
                                              key: _formKey,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  TextFormField(
                                                    controller: name,
                                                    decoration:
                                                        const InputDecoration(
                                                      label: Text("Enter Name"),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Required Name  ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  TextFormField(
                                                    controller: name,
                                                    decoration:
                                                        const InputDecoration(
                                                      label: Text("Email"),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Email  ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  TextFormField(
                                                    controller: name,
                                                    decoration:
                                                        const InputDecoration(
                                                      label:
                                                          Text("Phone Number"),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Email  ';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  ...displayTextField
                                                      .map(
                                                        (e) => Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 20,
                                                                      right:
                                                                          20),
                                                              child: Text(
                                                                e['label'],
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: e[
                                                                    'text_field']),
                                                          ],
                                                        ),
                                                      )
                                                      .toList(),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        if (_formKey
                                                            .currentState!
                                                            .validate()) {
                                                          List
                                                              finalDynamicTextFieldValue =
                                                              [];

                                                          if (displayTextField
                                                              .isNotEmpty) {
                                                            for (int i = 0;
                                                                i <
                                                                    displayTextField
                                                                        .length;
                                                                i++) {
                                                              TextEditingController
                                                                  taxValue =
                                                                  displayTextField[
                                                                          i]
                                                                      ['value'];

                                                              Map dummyMap = {
                                                                "${displayTextField[i]['keyforbackend']}":
                                                                    taxValue
                                                                        .text
                                                              };
                                                              print(dummyMap);
                                                              finalDynamicTextFieldValue
                                                                  .add(
                                                                      dummyMap);
                                                            }
                                                          }

                                                          Map requiredFormDataForBackend =
                                                              {
                                                            'name': name.text,
                                                            "tax":
                                                                finalDynamicTextFieldValue
                                                          };
                                                          print(
                                                              "Final Data $requiredFormDataForBackend");
                                                        }
                                                      },
                                                      child:
                                                          const Text("Submit"))
                                                ],
                                              )),
                                        ),
                                      ],
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
