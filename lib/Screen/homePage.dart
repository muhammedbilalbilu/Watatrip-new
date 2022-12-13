import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watatrip/Screen/bookingScreen.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';

class HomePageWidget extends StatefulWidget {
  final apidata;
  const HomePageWidget({Key? key, this.apidata}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1, 1),
                      child: SelectionArea(
                          child: Text(
                        'Hello, ${user.displayName}',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.65, 1),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 25,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 3),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.95, -0.50),
                  child: SelectionArea(
                      child: Text(
                    'Recent Searches',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Open Sans',
                          fontSize: 20,
                        ),
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BookingScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  color: Color(0xFFCDCDCD),
                                  offset: Offset(0, 10),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.65, -0.8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        19, 13, 5, 5),
                                    child: Image.asset(
                                      'assets/1face.jpeg',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        9, 2, 2, 2),
                                    child: SelectionArea(
                                        child: Text(
                                      'Capitiol commons',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 12,
                                          ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BookingScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  color: Color(0xFFCDCDCD),
                                  offset: Offset(0, 10),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 13, 5, 5),
                                  child: Image.asset(
                                    'assets/12face.jpeg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 2, 2, 2),
                                  child: SelectionArea(
                                      child: Text(
                                    'Estancia Mall',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 12,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Align(
                alignment: AlignmentDirectional(-0.95, 0),
                child: SelectionArea(
                    child: Text(
                  'Things to do',
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                      ),
                )),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookingScreen())),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/3face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Agri-tour',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/4face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'City Sightse...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/2face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Concerts',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/5face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Cultourl  Tour',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/6face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Heritage',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/7face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.9),
                            child: SelectionArea(
                                child: Text(
                              'Outdoor Re...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/8face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.9),
                            child: SelectionArea(
                                child: Text(
                              'Sports Tour',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/9face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Water Adve...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
