import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:watatrip/Screen/ui.dart';
import 'package:watatrip/backend/User.dart';
import 'package:watatrip/backend/apiFirebase.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  List<User> _Apidata = [];

  fetchRecords() async {
    var records = await FirebaseFirestore.instance.collection('users').get();
    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var _list = records.docs.map((data) => User.fromSnap(data)).toList();

    setState(() {
      _Apidata = _list;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchRecords();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
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
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Chat',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 25,
                                          ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 60,
                                      icon: Icon(
                                        Icons.search_outlined,
                                        color: Color(0xFF0F5862),
                                        size: 30,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1, -1),
                                  child: Text(
                                    'Who\'s Online?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: _Apidata.length,
                                        itemBuilder: (context, index) =>
                                            GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AudioChatDemoWidget(
                                                          receiver:
                                                              _Apidata[index],
                                                        )));
                                          },
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 0),
                                            child: Container(
                                              width: 80,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(1),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Center(
                                                    child: CircleAvatar(
                                                      radius: 30,
                                                      backgroundColor:
                                                          Colors.red,
                                                      child: CircleAvatar(
                                                        radius: 28,
                                                        backgroundImage:
                                                            NetworkImage(_Apidata[
                                                                    index]
                                                                .profilePhoto),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Center(
                                                      child: Text(
                                                        _Apidata[index]
                                                            .username,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontFamily:
                                                                'Open Sans'),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.horizontal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
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
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/70c2/9a3a/c9932fd0085dd0b0b98da0c694b07c34?Expires=1672012800&Signature=BVfEo6gfkW~V6tdWHbcFYJ2u3mGO9o~AJv7OKAGXLLN92JSoqcJsjhrM9stMiLd7jKykAVADeJ0u6ekEVLpkjXpL5B1mv8fnTG5scWRuEc8BjHEbFP-g2pgKLSkthvI7XlclCxpezpuMW8CfEyjp3HAbogTlsHU0dpheU-C-C8rioFqaladb3YAkE~6r16Y9860yp8oLcDN4M2TZjzju~hCiVRD8N7E77aFnOiG~MxyJyZNT3XIouebJa6YKNacBYyl1b7mxZiqQlrjDAxveD~jCcsVvo3~miKp8KWL1xm2roPCsRlXOb3b1mWgcJN~D8tmxbZlq0SaFYGRCwk7Rhg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Abijith',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'did he call you yesterday',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('2min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/deda/7961/d2d8add71e1ea20b917ccf2f77cc3d8b?Expires=1672012800&Signature=PmVV777J9CbULLtzdXXEnigEZB3nXAa0KwQ2m9VeHRB6tGTt7~MgbHl7haLEJvpeKNHMYafuEd8ufaVnZxC5qdBcVvJEo-FCqlySM4-xAIqjkpG41XixRrOpnqW0C0Lwl-gcKbZaed8iX2A23PKxGBTdG-s~s1N6eBSUFfh5AufzeX-XeqTKGDHEwWFINZmcq9CPqIPGElNvM4TweuX~xqj387blXNtlt5LVIHUTFUdaZt~mvESmKkSgNt-Zcesw6PcEJuQ6jdpjsIhLBBqTK-O~Px1K66mU4YNozGHY61RQ~Bmz4zW~9Zx1n1c8y9zPBf0N11MNo2P4IHFsxGXzOg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Nine',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'will you come for the party',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('30min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/d5db/a544/2e04a505dced14d88fd4f03d97b47c4d?Expires=1672012800&Signature=YOWNQD6kxf4-Z0MxibyNYVXBJxdoL6kb7QRoQULfQZCCIgZhEMHaINcwIv~UJEJTmML3d5VqmgaXwvw7p6MZhJamdNwstXSfMLkq5afKy4IYW8FrJd8VD5fTtRA4XgpjO23j-fQWhkHm~7p17EEivBufV7TOu7L7tHPQR988b1C80461qF5tWWRR~awXc9DQfJmpZrUt8ZdSIaNzgsRXyCDPkU1nxKqcLZYWBgPxsLnG7noR21kxzaOySiTDh5iM0QUMLIIqpK3T3b1D8l5LakmCXnHlg~lSBxE0VSdKx0W5ybia4Z6ljUZ4mYLFoOUxH-O5514R7qwUzcdvsAyiPA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Hiya',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'i got it',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('16min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/976e/bc4e/bfb34837ab6179521ee8f615dfdba7f1?Expires=1672012800&Signature=Wjsvy9~Wcg6mSsIkR5relB~msHtkn4qB0qarH4DI32mZO2KvFatDwRXVNxmABHiwQTjfOQhBBqUVZ0ovZyk3xvDzbBqGI28y8gF4v-WrI1RkorHIrPH0iPa3Lb2BXgSojy~M9SAw9I3KSZ-pGoNjQT4lCWtxvO5EtN-pHEwXgEz1tykGbMn75PwRypzIEkDLp2hEpc3iS2jaUtaE2hPgwm1XoouNwpm9MN813TxIaHnLaoGzWl2XvJhh71jhXHnV2HOdWufSVdWlh8rzn2GOiVP11LE7AsA8geHupEOmyf8QNW1ZVJ-WtcS6OVDme9oQpRrQ-LfE0puQ-BFdXv8NAw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Size',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Thank you bro',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('18min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/a57f/7188/c5c7aa2da965020d4f85fee632bb0bc2?Expires=1672012800&Signature=Sptb9Bbkzl4GXB59v9Iu2XK2FfaxsdcJnKX-tqHDmdQ0l6Yv3JYyTm31rR-7G4VyRycgKBKyG5RQRUs3Wq-cFle2Pjv1KZkSsmylUff4aBTAvZ~EnyDIvvH9qWf0AFcQjqduRPiyjx~ZxWz9p5z~062FKMdW1IOEylDzAkTxskjwW3okE0~mnHmp5PRdpiPAkXigooVXMl~lC63Lun4S7vZXd~eXCjhZ~~RoZhelyQTxHVRT8-6uFsA9Qn96GYtO01vssziXHI4tcdKBTw7xCxYujBsJffwXl-B9aZ3~VoP8CfYrF7lsW0npAsqjtp3mS3oBvYMtjZV4UjIimbzl9w__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'TECH',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'we would like to work with you',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('17min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/5b16/a141/8df95d49858d7610760ae85f4c40b1cc?Expires=1672012800&Signature=Ip8O6t7ZXRPrdTwRh2xpZE1Ip7T9664yYjOYsdYX7iS8VGnDf6tb-hR~uM7c7hx8YtN8Z~CO2tXLra1chlrMefCTRRy7Z412-eKbPK491rSbGDp-x~47n~U9r86J-Gl3~WqvzON4GiNvR4w9PY35G2KqCv5Pz1pkJuRYhoVAHo0rWgEei93r2B28tecGwSUvGxuNukQXN-Un4fRrjYIVPCoge0mDVZvGJ6E7mfnu-RgTUUK5C5GJTODugU3kMpYme4hEqbEV3S0OgQPN8rAsBn7-xANX2pwxS~pX3N3~wxkecwbmjYkBW7F-oD1Cq18zZYrve~Oug~JMaeev0HRMEA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Arya',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'When did you come',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('12min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/c379/7443/bc94272bcb5af50ffd8ed966054f4925?Expires=1672012800&Signature=QF7jG7hiw~Ar8099X7vVOtuQwo7N9HjXOYeZs5kEwvLT04bSMWZwwLoZQxbAK4YP7lkNm6L6cwhfXVtKxUZizKWXPsUJqjzJAR4LJqlYRhaXygVgwvTpgeIGmiPengZvVOav2dmBFdPEmGEJMQKpFJDlGSJQ714gHDlwJQWrsYwoBgKox~TAE6DNBotJ8gx-63dKT1IX0O8O3dyj3MWkC0nUW-HxzWdspmuv7nk5HDWYSAyvbRO~Drr-COSEC9uyp0DnFxZRaBGxtoIib8w4knK7GN1JQg-b6YfG9uv15Ws34NOA-XceyO294W16lh41rrT~IWXz7e82Or6bQ9fHiw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Sanies',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'When will you come',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('10min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -1),
                                                  child: Container(
                                                    width: 55,
                                                    height: 55,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://s3-alpha-sig.figma.com/img/29fc/f0df/e2a16ccfca230a36e156bf5d7ed64505?Expires=1672012800&Signature=DHzK4zzFfeQuscL7715hTpPaQBGrr~wYxB7OuiRexWaHyTM8O608IBKvDuI7sqLZs5cMumeTaa6w32CSIuup34mrWvEjgV6eRiFRMw0ujGp3VaUFbSisuQHRc3eXrG6hErPAZXvcuJhJDaUZB48r6E8AyXsxZarFD12VugacaO3cEirfpOwirZHEjbO0CleI1FvBdYvTV~1q8fdKdztn8BNewyGjLbu1ZXcCg4cMPVKQndOREl0Pk97OYxY78XyF-8XvuBRpuk3s07Le6DmLm15Jpa3JUh7g2lRrHNIR2pGpoo41Tm71cdgPxvwgBRt2vmUIpTKnO2JF7t2oieYd0Q__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 220,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      5, 0, 0),
                                                          child: Text(
                                                            'Maya',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 18,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(15,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'When will you come',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                fontFamily:
                                                                    'Open Sans'),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    width: 90,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.75, -0.7),
                                                      child: Text('25min ago',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Open Sans')),
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
                    ],
                  ),
                ))));
  }
}
