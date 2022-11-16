import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watatrip/flutter_flow/canousel_slider_data.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';

class MobileScreenLayout extends StatefulWidget {
  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with TickerProviderStateMixin {
  TabController? _tabController;
  bool isLoding = false;
  final String mapimage =
      'https://s3-alpha-sig.figma.com/img/d7fa/8e59/2d1221b1a64cfe02be9823f9107db13e?Expires=1669593600&Signature=BDr~bp9zuTR8GUWxKhwu2fNDOUa6xQmYTSLNCIux9hCpf51fjtVT8Fkroa4QAx1egdnvfHOSjroC9dKAxiK3KPNjg-mouNT2MzOYmlMVoNB8HyIXUQ~Bug2i4eGvA-Rs7aICXIwTDc~~dkL7CgM5QcF13b-pFptFat0vrTpLnRfdMQ8mKUW~rQalJp7h2PiGeyDyIzGFDeduNO0Tk5DpXJHT8mxb6JZHrNF~udhEGhy2nlcLgUa5svNTCoG-dp~wZUFJlbtZ8pBBZhRHuaAAt8cYCLu4RGNv1Rh65CXccnvZ2oGDRgAiN7Qjppf5Ga6s3sv~DAxiHmuRdAoSQteMFw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';
  final Uri uri = Uri.parse(
      "https://www.bing.com/search?q=random+api+for+testing&cvid=459eab02fd71458ca2c6a0fbfb18da8f&aqs=edge.1.69i59i450l8...8.897033j0j1&FORM=ANSPA1&PC=LCTS");
  final number = '0928 552 5443';
  final Uri urimap = Uri.parse('https://goo.gl/maps/xd34SeZLAP2Tp6X49');

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back, size: 30, color: Colors.black54),
                    Expanded(child: Container()),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
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
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: SelectionArea(
                              child: Text(
                            'Windfarm Nature Escape',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                      child: FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              CarouselImage(),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    child: TabBar(
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(text: "Map"),
                          Tab(text: "Reviews"),
                          Tab(text: "About")
                        ]),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  child: TabBarView(controller: _tabController, children: [
                    Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              height: 420,
                              child: InkWell(
                                onTap: () async {
                                  await launchUrl(urimap);
                                },
                                child: isLoding
                                    ? Center(
                                        child: CircularProgressIndicator(),
                                      )
                                    : Image.network(
                                        mapimage,
                                        fit: BoxFit.fill,
                                      ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ListView(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, -1),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1, -1),
                                                child: Container(
                                                  width: 60,
                                                  height: 60,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://tse2.mm.bing.net/th?id=OIP.oQct2AToyBsqQjjPzZp9AwHaLH&pid=Api&P=0',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 150,
                                                    height: 80,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -0.6, 0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Bilal',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize: 18,
                                                                ),
                                                          )),
                                                        ),
                                                        Container(
                                                          width: 150,
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.65,
                                                                    -0.45),
                                                            child:
                                                                SelectionArea(
                                                                    child: Text(
                                                              'sep 12 at 6:50 AM ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                  ),
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 100,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 100,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .globeAsia,
                                                        color:
                                                            Color(0xFFCDCDCD),
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 170,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: SelectionArea(
                                              child: Text(
                                            'Who was Dick Whittington? Watch this story, one of our \'British tales\' videos about characters and people from British history, to find out!',
                                            maxLines: 6,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 18,
                                                ),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  'https://s3-alpha-sig.figma.com/img/20e7/8610/4d333c30e10913eecf0244ba2303e1c3?Expires=1669593600&Signature=ByWfjynMVBdpJPst46Up82~EQFWYmrRjMQukKiSKyPLltQ3qvLNxNshaDpSm7Di7xR4ErT9H~FQOnhhR-An8yC8vWAut73WjrPo4zdRdSChk0kVJlx0r~1JbmxHP6Zjq7sxe02KlI4qbMDqL15ziHcXUhSeTxDWrRyb7Z1KZcddY7dQH4vlZyiujThbnVTUf4ixS9WlCCukrwzJ1HwQZys56D970-bh1S-2Hv6Wh1eXXOPLPt6nt2EF3Ud20Y8~zuSAMweAhnLF012q9btrJGKTL9BV5BYTDjHJsdVtSTMzt0r2-8ovRH5hK2xEEeTyEAOpySzzxKgl8JxBrZWwy6g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                ).image,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 95,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(1, 0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Address:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
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
                                                      .primaryBtnText,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1, 0.8),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Monte Alegre Stegre street Sttio Burgarin Brgy Halayhin,pilla rizal',
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          lineHeight: 0,
                                                        ),
                                                  )),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.15, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 180,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.15, 0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Contact Number:',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 20,
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
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, 0.1),
                                                    child: SelectionArea(
                                                        child: InkWell(
                                                      onTap: () async {
                                                        await launch(
                                                            'tel://$number');
                                                      },
                                                      child: Text(
                                                        '0928 552 5443',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
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
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 90,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1, -0.55),
                                                child: SelectionArea(
                                                    child: Text(
                                                  ' FB Page:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                                )),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 100,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1, 0),
                                                    child: SelectionArea(
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await launchUrl(uri);
                                                        },
                                                        child: Text(
                                                          'https://www.bing.com/search?q=random+api+for+testing&cvid=459eab02fd71458ca2c6a0fbfb18da8f&aqs=edge.1.69i59i450l8...8.897033j0j1&FORM=ANSPA1&PC=LCTS',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF2919CA),
                                                              ),
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: SelectionArea(
                                child: Text(
                              'The holiday season is the perfect time to cozy up by the fire and Christmas tree and have a movie marathon.\n\nBut as the days to Christmas tick away, there may not be enough time to find every Christmas movie to stream. Don\'t worry, we\'ve got you covered.\n\nHere is a compiled list of family-friendly films available on various streaming services for you to watch this holiday season.',
                              maxLines: 7,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            )),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
