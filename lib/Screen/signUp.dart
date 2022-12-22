import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:watatrip/Screen/homePage.dart';
import 'package:watatrip/backend/auth.dart';
import 'package:watatrip/flutter_flow/flutter_flow_util.dart';
import 'package:watatrip/widget/snakBar.dart';

import '../flutter_flow/flutter_flow_theme.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/SignUpScreen';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final CountryCodePicker = FlCountryCodePicker();
  final fromKey = GlobalKey<FormState>();

  CountryCode? countryCode;
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;
  DateTime? date;
  bool? checkboxValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final authMethods = AuthMethods();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
    textController6 = TextEditingController();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    super.dispose();
  }

  void _ShowDatePicker() async {
    date = await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1945),
        lastDate: DateTime(2022));

    if (date != null) {
      textController3!.text = DateFormat('yyyy-MM-dd').format(date!);
    }
  }

  // ignore: non_constant_identifier_names
  void Registerer() async {
    setState(() {
      _isLoading = true;
    });
    String res = await authMethods.signUpUser(
        email: textController5!.text,
        number: textController6!.text,
        password: textController4!.text,
        username: textController1!.text,
        lastname: textController2!.text,
        birthday: textController3!.text);
    if (res == "success") {
      setState(() {
        _isLoading = false;
        showSnackbar(context, 'Account created');
      });
      // navigate to the home screen
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      setState(() {
        _isLoading = false;
      });
      // show the error
      showSnackBar(context, res.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Form(
                    key: fromKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 39,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      size: 32,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment:
                                        AlignmentDirectional(-0.65, -0.55),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(1, 1),
                                        child: SelectionArea(
                                            child: Text(
                                          'SKIP FOR NOW',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                fontSize: 18,
                                              ),
                                        )),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 4),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 37,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1, -1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Personal info',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 25,
                                      ),
                                )),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 0.15),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 5, 9, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: textController1,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'First name',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 15,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 0.15),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 5, 9, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: textController2,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Last name',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 15,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 0.15),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 5, 9, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: textController3,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                    hintText: 'Birthday',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        _ShowDatePicker();
                                      },
                                      icon: Icon(
                                        Icons.event_note_outlined,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    )),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 15,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 0.15),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 5, 9, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: textController4,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Password ',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 15,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(9, 15, 4, 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Container(
                                        width: 100,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -0.85, 1),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Contacts info',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                )),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.5, 1),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          '+ Email ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                fontSize: 18,
                                                              ),
                                                        )),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.25, 1),
                                                      child: SelectionArea(
                                                          child: Text(
                                                        '+ Phone',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                      )),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.2, 0.15),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(9, 3, 9, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: textController5,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 15,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(9, 5, 9, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 70,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: InkWell(
                              onTap: () async {
                                final code = await CountryCodePicker.showPicker(
                                    context: context);
                                setState(() {
                                  countryCode = code;
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.2, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 5),
                                      child: Container(
                                          width: 100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(7),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: countryCode != null
                                                      ? countryCode!.flagImage
                                                      : null,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  countryCode?.dialCode ??
                                                      '+91',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: textController6,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Mobil number ',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        filled: false,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      validator: (value) {
                                        if (value != null &&
                                            value.length == 10) {
                                          return null;
                                        } else {
                                          print('Enter valid number');
                                        }
                                        return null;
                                      },
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 5, 7, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                      width: 80,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1, -0.05),
                                            child: SelectionArea(
                                                child: Text(
                                              ' Connect your social accounts ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle1,
                                            )),
                                          ),
                                          Text(
                                            'Optional',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontFamily: 'Open Sans'),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(9, 0, 9, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.6, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    ' Agree to ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18,
                                        ),
                                  )),
                                ),
                                SelectionArea(
                                    child: Text(
                                  'OUR TERMS',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0xFF2FB6A6),
                                        fontSize: 18,
                                      ),
                                )),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0xFFF5F5F5),
                                  ),
                                  child: Checkbox(
                                    value: checkboxValue ??= true,
                                    onChanged: (newValue) async {
                                      setState(() => checkboxValue = newValue!);

                                      if (checkboxValue = true) {
                                        showSnackbar(context,
                                            'You have to agree our terms');
                                      }
                                    },
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(7, 20, 7, 18),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xFFF10606),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-0.05, 0),
                                child: SelectionArea(
                                    child: InkWell(
                                  onTap: () {
                                    Registerer();
                                  },
                                  child: !_isLoading
                                      ? Text(
                                          'create Account',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 22,
                                              ),
                                        )
                                      : Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                )),
                              ),
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
    );
  }
}
