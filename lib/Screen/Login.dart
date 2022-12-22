import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:watatrip/Screen/homePage.dart';
import 'package:watatrip/Screen/signUp.dart';
import 'package:watatrip/Screen/verifyAccount.dart';
import 'package:watatrip/backend/auth.dart';
import 'package:watatrip/widget/snakBar.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromKey = GlobalKey<FormState>();
  TextEditingController? textController1;
  TextEditingController? textController2;
  bool? checkboxValue;
  bool _isLoading = false;

  late bool passwordVisibility;
  bool? checkbox;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  // Login users
  void Login() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: textController1!.text, password: textController2!.text);
    if (res == "success") {
      setState(() {
        _isLoading = false;
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        //
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, -0.6),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
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
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 130,
                      height: 45,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        //
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-0.25, 0.4),
                        child: SelectionArea(
                            child: Text(
                          'Login',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                        )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.28,
                    decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground
                        //
                        ),
                    child: Image.asset(
                      'assets/Watatrip-image.jpg',
                      width: 10,
                      height: 10,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: fromKey,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: textController1,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
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
                        fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans',
                            fontSize: 15,
                          ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: textController2,
                      autofocus: true,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        hintText: 'Password ',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).lineColor,
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
                        fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, -0.25),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFFF5F5F5),
                                    ),
                                    child: Checkbox(
                                      value: checkboxValue ??= true,
                                      onChanged: (newValue) async {
                                        setState(
                                            () => checkboxValue = newValue!);
                                      },
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Remember  me ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1, 0),
                              child: SelectionArea(
                                  child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, VerifyAccount.routeName);
                                },
                                child: Text(
                                  'Forgot password?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF2FB6A6),
                                        fontSize: 17,
                                      ),
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 1),
                  child: InkWell(
                    onTap: () {
                      final isValidFrom = fromKey.currentState!.validate();
                      if (isValidFrom) {
                        Login();
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFF10606),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectionArea(
                              child: InkWell(
                            onTap: Login,
                            child: _isLoading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : Text(
                                    'Login',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 20,
                                        ),
                                  ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectionArea(
                          child: Text(
                        'Or connect with',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFF757575),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.blue)),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue,
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 55,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.red)),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            FontAwesomeIcons.googlePlusG,
                            color: Colors.red,
                            size: 30,
                          ),
                          onPressed: () {
                            AuthMethods().signInWithGoogle(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(1, -0.35),
                          child: SelectionArea(
                              child: Text(
                            'Don\'t have an account?',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 18,
                                    ),
                          )),
                        ),
                      ),
                    ),
                    Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1, -0.3),
                          child: SelectionArea(
                              child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SignUpScreen.routeName);
                            },
                            child: Text(
                              ' Sign Up',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF488FB1),
                                    fontSize: 19,
                                  ),
                            ),
                          )),
                        ))
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
