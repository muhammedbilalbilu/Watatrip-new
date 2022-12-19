// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

class MeChat extends StatefulWidget {
  final String message;
  final bool isMe;
  const MeChat({
    Key? key,
    required this.message,
    required this.isMe,
  }) : super(key: key);

  @override
  State<MeChat> createState() => _MeChatState();
}

class _MeChatState extends State<MeChat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 15, 0),
      child: Row(
        mainAxisAlignment:
            widget.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              decoration: BoxDecoration(
                color: widget.isMe ? Color(0xFF20B8A8) : Color(0xFFE5E5E5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.message,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '12.14',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  // Padding(
  //                             padding:
  //                                 EdgeInsetsDirectional.fromSTEB(0, 10, 15, 0),
  //                             child: Row(
  //                               mainAxisSize: MainAxisSize.max,
  //                               mainAxisAlignment: MainAxisAlignment.start,
  //                               crossAxisAlignment: CrossAxisAlignment.end,
  //                               children: [
  //                                 Padding(
  //                                   padding: EdgeInsetsDirectional.fromSTEB(
  //                                       13, 0, 7, 0),
  //                                   child: Container(
  //                                     width: 40,
  //                                     height: 40,
  //                                     clipBehavior: Clip.antiAlias,
  //                                     decoration: BoxDecoration(
  //                                       shape: BoxShape.circle,
  //                                     ),
  //                                     child: Image.network(
  //                                         widget.receiver.profilePhoto),
  //                                   ),
  //                                 ),
  //                                 Container(
  //                                   constraints: BoxConstraints(
  //                                     maxWidth:
  //                                         MediaQuery.of(context).size.width *
  //                                             0.7,
  //                                   ),
  //                                   decoration: BoxDecoration(
                                      // color: Color(0xFFE5E5E5),
  //                                     borderRadius: BorderRadius.circular(12),
  //                                   ),
  //                                   child: Padding(
  //                                     padding: EdgeInsetsDirectional.fromSTEB(
  //                                         10, 10, 10, 10),
  //                                     child: Column(
  //                                       mainAxisSize: MainAxisSize.min,
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment.end,
  //                                       children: [
  //                                         Wrap(
  //                                           spacing: 0,
  //                                           runSpacing: 0,
  //                                           alignment: WrapAlignment.start,
  //                                           crossAxisAlignment:
  //                                               WrapCrossAlignment.start,
  //                                           direction: Axis.horizontal,
  //                                           runAlignment: WrapAlignment.start,
  //                                           verticalDirection:
  //                                               VerticalDirection.down,
  //                                           clipBehavior: Clip.none,
  //                                           children: [
  //                                             Text(
  //                                               'This is a long message. The container  is limited to 70% max width and the text will start floating',
  //                                               style:
  //                                                   FlutterFlowTheme.of(context)
  //                                                       .bodyText1
  //                                                       .override(
  //                                                         fontFamily: 'Poppins',
  //                                                         fontWeight:
  //                                                             FontWeight.normal,
  //                                                       ),
  //                                             ),
  //                                           ],
  //                                         ),
  //                                         Row(
  //                                           mainAxisSize: MainAxisSize.min,
  //                                           children: [
  //                                             Text(
  //                                               '12.31',
  //                                               style:
  //                                                   FlutterFlowTheme.of(context)
  //                                                       .bodyText2
  //                                                       .override(
  //                                                         fontFamily: 'Poppins',
  //                                                         fontSize: 12,
  //                                                         fontWeight:
  //                                                             FontWeight.normal,
  //                                                       ),
  //                                             ),
  //                                           ],
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ],
  //                             ),
  //                           ),