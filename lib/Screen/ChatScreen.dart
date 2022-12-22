import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:watatrip/Screen/homePage.dart';
import 'package:watatrip/Screen/ui.dart';
import 'package:watatrip/backend/User.dart';
import 'package:watatrip/backend/apiFirebase.dart';
import 'package:watatrip/backend/message.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  static const routeName = '/ChatWidget';
  const ChatWidget({Key? key}) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  var details;
  List<User> _Apidata = [];
  List<Message> _Message = [];

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

  fetchMessageRecords() async {
    var records = await FirebaseFirestore.instance
        .collection('users')
        .doc(user)
        .collection('messages')
        .doc(details)
        .collection('chats')
        .get();
    mapRecordsFromMessage(records);
  }

  mapRecordsFromMessage(QuerySnapshot<Map<String, dynamic>> records) {
    var _list = records.docs.map((data) => Message.fromSnap(data)).toList();

    setState(() {
      _Message = _list;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchRecords();
    fetchMessageRecords();
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
                                            details = _Apidata[index].uid;
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AudioChatDemoWidget(
                                                          currentId:
                                                              _Apidata[index]
                                                                  .uid,
                                                          receiverId:
                                                              _Apidata[index]
                                                                  .uid,
                                                          receiverImage:
                                                              _Apidata[index]
                                                                  .profilePhoto,
                                                          receiverName:
                                                              _Apidata[index]
                                                                  .username,
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
                                    child: StreamBuilder(
                                        stream: FirebaseFirestore.instance
                                            .collection('users')
                                            .doc(user)
                                            .collection('messages')
                                            .snapshots(),
                                        builder:
                                            (context, AsyncSnapshot snapshot) {
                                          if (snapshot.hasData) {
                                            if (snapshot.data.docs.length < 1) {
                                              return Center(
                                                child: Text('Stared Messaging'),
                                              );
                                            }
                                            return ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              padding: EdgeInsets.zero,
                                              itemCount:
                                                  snapshot.data.docs.length,
                                              itemBuilder: (context, index) {
                                                var Data = snapshot
                                                    .data.docs[index].id;
                                                var LastMessage =
                                                    snapshot.data.docs[index]
                                                        ['last_message'];
                                                return FutureBuilder(
                                                    future: FirebaseFirestore
                                                        .instance
                                                        .collection('users')
                                                        .doc(Data)
                                                        .get(),
                                                    builder: (context,
                                                        AsyncSnapshot
                                                            asyncsnapshot) {
                                                      if (asyncsnapshot
                                                          .hasData) {
                                                        var Datareciver =
                                                            asyncsnapshot.data;
                                                        return GestureDetector(
                                                          onTap: () =>
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder: (context) =>
                                                                          AudioChatDemoWidget(
                                                                            currentId:
                                                                                user,
                                                                            receiverId:
                                                                                Datareciver['uid'],
                                                                            receiverImage:
                                                                                Datareciver['profilePhoto'],
                                                                            receiverName:
                                                                                Datareciver['username'],
                                                                          ))),
                                                          child: Container(
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: 80,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          5),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1,
                                                                            -1),
                                                                    child:
                                                                        Container(
                                                                      width: 55,
                                                                      height:
                                                                          55,
                                                                      clipBehavior:
                                                                          Clip.antiAlias,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                      child: Image
                                                                          .network(
                                                                        Datareciver[
                                                                            'profilePhoto'],
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 220,
                                                                    height: 100,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1,
                                                                              0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15,
                                                                                5,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              Datareciver['username'],
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Open Sans',
                                                                                    fontSize: 18,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1,
                                                                              0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              LastMessage,
                                                                              style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Open Sans'),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width: 90,
                                                                      height:
                                                                          100,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -0.75,
                                                                            -0.7),
                                                                        child: Text(
                                                                            '2min ago',
                                                                            style:
                                                                                TextStyle(fontFamily: 'Open Sans')),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      return LinearProgressIndicator();
                                                    });
                                              },
                                            );
                                          }
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }),
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
