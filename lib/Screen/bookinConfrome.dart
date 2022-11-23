import 'package:flutter/material.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

class BookingConformed extends StatefulWidget {
  @override
  State<BookingConformed> createState() => _BookingConformedState();
}

class _BookingConformedState extends State<BookingConformed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: FlutterFlowTheme.of(context).lineColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1, -0.65),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              'Your Booking ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 28,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 3,
              color: FlutterFlowTheme.of(context).lineColor,
              width: double.infinity,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0.75),
                      child: Text(
                        'Congratulations!',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFF0F5862),
                              fontSize: 24,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.1, -1),
                      child: Text(
                        'Your booking is completed. ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: Color(0xFF0F5862),
                              fontSize: 24,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: Text(
                          'We will send your information of yor',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  color: Color(0xFF363636)),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-0.0, -1),
                        child: Text(
                          'booking details through your Email.',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                  color: Color(0xFF363636)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/e9a2/1909/d74a340db186455bbd11d2289637a677?Expires=1669593600&Signature=S8~04UZtUsDGMSaTs~QS-EaOOB0NaIU7Xe6snAb3fcZVMY5PCFdlEl8qgyfG8jqym8W9lp4i0BXYve5CmX3U2wupclt4R~39lIZ0l9Ctg0xdh~yZwAk2DMI0BhluTGDBJzNnWmv8Noc3UcAwtJhxZ5eIt8HhLpS6LDwjt3K6Pk0upnTIS-PAVx7GamYCBkFqOEj7eUKUjLGCB2ueCuNYcEz4GhewNDBxMJOQytcO6VG4ym~ahzwjKtenmxgDKYIQqdTTuQmXWqLLZXuBcH7n42Lm1rIc~TZn~hnyeMxG9yv5XYqvHE8Ysf-i-NfEoKAikJQDfbc6Ar3ZJQH55sPFpw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                width: 296,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
