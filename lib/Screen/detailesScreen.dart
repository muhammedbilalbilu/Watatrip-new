import 'dart:convert';

import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watatrip/backend/ApiCall.dart';
import 'package:watatrip/flutter_flow/canousel_slider_data.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

import '../backend/Apidata.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';

class MobileScreenLayout extends StatefulWidget {
  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with TickerProviderStateMixin {
  TabController? _tabController;

  final String mapimage =
      'https://s3-alpha-sig.figma.com/img/d7fa/8e59/2d1221b1a64cfe02be9823f9107db13e?Expires=1669593600&Signature=BDr~bp9zuTR8GUWxKhwu2fNDOUa6xQmYTSLNCIux9hCpf51fjtVT8Fkroa4QAx1egdnvfHOSjroC9dKAxiK3KPNjg-mouNT2MzOYmlMVoNB8HyIXUQ~Bug2i4eGvA-Rs7aICXIwTDc~~dkL7CgM5QcF13b-pFptFat0vrTpLnRfdMQ8mKUW~rQalJp7h2PiGeyDyIzGFDeduNO0Tk5DpXJHT8mxb6JZHrNF~udhEGhy2nlcLgUa5svNTCoG-dp~wZUFJlbtZ8pBBZhRHuaAAt8cYCLu4RGNv1Rh65CXccnvZ2oGDRgAiN7Qjppf5Ga6s3sv~DAxiHmuRdAoSQteMFw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: Color(0xFFF1F3F5),
        body: FutureBuilder(
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              Apidata api = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: SelectionArea(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'Windfarm Nature Escape',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                  ),
                                )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Color(0xFF0F5862),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CarouselImage(
                        imageadd: [
                          api.image1,
                          api.image2,
                          api.image3,
                          api.image4,
                          api.image5
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: Colors.white,
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Color(0xFF0F5862),
                          indicatorWeight: 4,
                          labelColor: Color(0xFF0F5862),
                          labelStyle: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600),
                          unselectedLabelColor: Colors.black,
                          controller: _tabController,
                          tabs: [
                            Tab(
                              text: "About",
                            ),
                            Tab(text: "Map"),
                            Tab(text: "Reviews")
                          ]),
                    ),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        height: 300,
                        child:
                            TabBarView(controller: _tabController, children: [
                          Container(
                              child: Column(children: [
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    api.logo,
                                  ).image,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 400,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 60,
                                            decoration: BoxDecoration(),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  SelectionArea(
                                                      child: Text(
                                                    'Address:',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  )),
                                                  Expanded(
                                                    child: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1, 0),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          api.address,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                        )),
                                                      ),
                                                    ),
                                                  )
                                                ])),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 30,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SelectionArea(
                                                  child: Text(
                                                'Number:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                              )),
                                              Expanded(
                                                child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0.10),
                                                    child: SelectionArea(
                                                        child: InkWell(
                                                      onTap: () async {
                                                        await launch(
                                                            'tel://${api.contactNumber}');
                                                      },
                                                      child: Text(
                                                        api.contactNumber,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  fontSize: 15,
                                                                  color: Color(
                                                                      0xFF2919CA),
                                                                ),
                                                      ),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 70,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SelectionArea(
                                                  child: Text(
                                                'FB page:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                              )),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.25, -0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: SelectionArea(
                                                        child: InkWell(
                                                      onTap: () async {
                                                        await launchUrl(
                                                            Uri.parse(api.fb));
                                                      },
                                                      child: Text(
                                                        api.fb,
                                                        maxLines: 2,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: Color(
                                                                      0xFF2919CA),
                                                                ),
                                                      ),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          child: Text(api.details),
                                        ))
                                      ])),
                            ),
                          ])),
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 420,
                                    child: InkWell(
                                      onTap: () async {
                                        await launchUrl(Uri.parse(api.mapLink));
                                      },
                                      child: Image.network(
                                        mapimage,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ListView(children: [
                            Container(
                              width: double.infinity,
                              child: Image.asset(
                                'assets/Reviews.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ])
                        ]),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
          future: getName(),
        ),
      ),
    );
  }
}



                      // 

                  // ListView(
                  //           children: [
                  //             SizedBox(
                  //               height: 2,
                  //             ),
                  //             Column(mainAxisSize: MainAxisSize.max, children: [
                  //               Container(
                  //                 width: MediaQuery.of(context).size.width,
                  //                 height:
                  //                     MediaQuery.of(context).size.height * 1,
                  //                 decoration: BoxDecoration(
                  //                   color: FlutterFlowTheme.of(context)
                  //                       .primaryBtnText,
                  //                 ),
                  //                 child: Column(
                  //                   mainAxisSize: MainAxisSize.max,
                  //                   children: [
                  //                     Container(
                  //                       width:
                  //                           MediaQuery.of(context).size.width,
                  //                       height: 200,
                  //                       decoration: BoxDecoration(
                  //                         color: FlutterFlowTheme.of(context)
                  //                             .primaryBtnText,
                  //                       ),
                  //                       child: Column(
                  //                         mainAxisSize: MainAxisSize.max,
                  //                         children: [
                  //                           Container(
                  //                             width: MediaQuery.of(context)
                  //                                 .size
                  //                                 .width,
                  //                             height: 70,
                  //                             decoration: BoxDecoration(
                  //                               color:
                  //                                   FlutterFlowTheme.of(context)
                  //                                       .primaryBtnText,
                  //                             ),
                  //                             child: Row(
                  //                               mainAxisSize: MainAxisSize.max,
                  //                               children: [
                  //                                 Align(
                  //                                   alignment:
                  //                                       AlignmentDirectional(
                  //                                           -0.45, -1),
                  //                                   child: Container(
                  //                                     width: 50,
                  //                                     height: 50,
                  //                                     clipBehavior:
                  //                                         Clip.antiAlias,
                  //                                     decoration: BoxDecoration(
                  //                                       shape: BoxShape.circle,
                  //                                     ),
                  //                                     child: Image.network(
                  //                                       'https://tse2.mm.bing.net/th?id=OIP.oQct2AToyBsqQjjPzZp9AwHaLH&pid=Api&P=0',
                  //                                       fit: BoxFit.fitWidth,
                  //                                     ),
                  //                                   ),
                  //                                 ),
                  //                                 Container(
                  //                                   width: 135,
                  //                                   height: 100,
                  //                                   decoration: BoxDecoration(
                  //                                     color: FlutterFlowTheme
                  //                                             .of(context)
                  //                                         .secondaryBackground,
                  //                                   ),
                  //                                   child: Column(
                  //                                     mainAxisSize:
                  //                                         MainAxisSize.max,
                  //                                     children: [
                  //                                       Align(
                  //                                         alignment:
                  //                                             AlignmentDirectional(
                  //                                                 0.45, -1),
                  //                                         child: SelectionArea(
                  //                                             child: Text(
                  //                                           'muhammed',
                  //                                           style: FlutterFlowTheme
                  //                                                   .of(context)
                  //                                               .bodyText1
                  //                                               .override(
                  //                                                 fontFamily:
                  //                                                     'Poppins',
                  //                                                 fontSize: 18,
                  //                                               ),
                  //                                         )),
                  //                                       ),
                  //                                       Align(
                  //                                         alignment:
                  //                                             AlignmentDirectional(
                  //                                                 1, 0),
                  //                                         child: SelectionArea(
                  //                                             child: Text(
                  //                                           'sep 12 at 6:19 Am',
                  //                                           style: FlutterFlowTheme
                  //                                                   .of(context)
                  //                                               .bodyText1
                  //                                               .override(
                  //                                                 fontFamily:
                  //                                                     'Poppins',
                  //                                                 color: Color(
                  //                                                     0xFFCDCDCD),
                  //                                               ),
                  //                                         )),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                                 Container(
                  //                                   width: 100,
                  //                                   height: 100,
                  //                                   decoration: BoxDecoration(
                  //                                     color: FlutterFlowTheme
                  //                                             .of(context)
                  //                                         .secondaryBackground,
                  //                                   ),
                  //                                   child: Column(
                  //                                     mainAxisSize:
                  //                                         MainAxisSize.max,
                  //                                     children: [
                  //                                       Container(
                  //                                         width: 100,
                  //                                         height: 28,
                  //                                         decoration:
                  //                                             BoxDecoration(
                  //                                           color: FlutterFlowTheme
                  //                                                   .of(context)
                  //                                               .secondaryBackground,
                  //                                         ),
                  //                                         child: Align(
                  //                                           alignment:
                  //                                               AlignmentDirectional(
                  //                                                   -1, 0.25),
                  //                                           child:
                  //                                               SelectionArea(
                  //                                                   child: Text(
                  //                                             'recommends',
                  //                                             style: FlutterFlowTheme
                  //                                                     .of(context)
                  //                                                 .bodyText1,
                  //                                           )),
                  //                                         ),
                  //                                       ),
                  //                                       Container(
                  //                                         width: 100,
                  //                                         height: 30,
                  //                                         decoration:
                  //                                             BoxDecoration(
                  //                                           color: FlutterFlowTheme
                  //                                                   .of(context)
                  //                                               .secondaryBackground,
                  //                                         ),
                  //                                         child: Align(
                  //                                           alignment:
                  //                                               AlignmentDirectional(
                  //                                                   -1, -1),
                  //                                           child: FaIcon(
                  //                                             FontAwesomeIcons
                  //                                                 .globeAfrica,
                  //                                             color: Color(
                  //                                                 0xFFCDCDCD),
                  //                                             size: 20,
                  //                                           ),
                  //                                         ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                                 Container(
                  //                                   width: 100,
                  //                                   height: 100,
                  //                                   decoration: BoxDecoration(
                  //                                     color: FlutterFlowTheme
                  //                                             .of(context)
                  //                                         .secondaryBackground,
                  //                                   ),
                  //                                   child: Column(
                  //                                     mainAxisSize:
                  //                                         MainAxisSize.max,
                  //                                     children: [
                  //                                       Container(
                  //                                         width: 100,
                  //                                         height: 30,
                  //                                         decoration:
                  //                                             BoxDecoration(
                  //                                           color: FlutterFlowTheme
                  //                                                   .of(context)
                  //                                               .secondaryBackground,
                  //                                         ),
                  //                                         child: Align(
                  //                                           alignment:
                  //                                               AlignmentDirectional(
                  //                                                   1, -1),
                  //                                           child:
                  //                                               SelectionArea(
                  //                                                   child: Text(
                  //                                             'Windfarm',
                  //                                             style: FlutterFlowTheme
                  //                                                     .of(context)
                  //                                                 .bodyText1
                  //                                                 .override(
                  //                                                   fontFamily:
                  //                                                       'Poppins',
                  //                                                   fontSize:
                  //                                                       18,
                  //                                                 ),
                  //                                           )),
                  //                                         ),
                  //                                       ),
                  //                                       Align(
                  //                                         alignment:
                  //                                             AlignmentDirectional(
                  //                                                 1, -1),
                  //                                         child: Icon(
                  //                                           Icons
                  //                                               .keyboard_control_rounded,
                  //                                           color: Color(
                  //                                               0xFFCDCDCD),
                  //                                           size: 25,
                  //                                         ),
                  //                                       ),
                  //                                     ],
                  //                                   ),
                  //                                 ),
                  //                               ],
                  //                             ),
                  //                           ),
                  //                           SelectionArea(
                  //                               child: Text(
                  //                             'Who was Dick Whittington? Watch this story, one of our \'British tales\' videos about characters and people from British history, to find out!',
                  //                             maxLines: 6,
                  //                             style:
                  //                                 FlutterFlowTheme.of(context)
                  //                                     .bodyText1
                  //                                     .override(
                  //                                       fontFamily: 'Open Sans',
                  //                                       fontSize: 17,
                  //                                     ),
                  //                           )),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               )
                  //             ])
                  //           ],
                  //         ),