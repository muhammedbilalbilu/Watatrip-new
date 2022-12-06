// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:watatrip/Screen/bookingScreen.dart';
import 'package:watatrip/flutter_flow/canousel_slider_data.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

class SearchDetailScreen extends StatefulWidget {
  String mapLink;
  String details;
  String fb;
  String contactNumber;
  String address;
  String logo;
  String name;
  String image1;
  String image2;
  String image3;
  String image4;
  String image5;

  SearchDetailScreen({
    Key? key,
    required this.mapLink,
    required this.details,
    required this.fb,
    required this.contactNumber,
    required this.address,
    required this.logo,
    required this.name,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
  }) : super(key: key);
  @override
  State<SearchDetailScreen> createState() => _SearchDetailScreenState();
}

class _SearchDetailScreenState extends State<SearchDetailScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    void navigator() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => BookingScreen())));
    }

    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F5),
      //  6 call FutureBuilder
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: InkWell(
                            onTap: navigator,
                            child: Icon(
                              Icons.arrow_back,
                              size: 25,
                              color: Colors.grey,
                            ),
                          ),
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
                            height: 110,
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: SelectionArea(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  widget.name,
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
                      image: [
                        widget.image1,
                        widget.image2,
                        widget.image3,
                        widget.image4,
                        widget.image5,
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
                      child: TabBarView(controller: _tabController, children: [
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
                                  widget.logo,
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 60,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SelectionArea(
                                                    child: Text(
                                                  'Address: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
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
                                                              -1, 0.1),
                                                      child: SelectionArea(
                                                          child: Text(
                                                        widget.address,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Open Sans',
                                                              color:
                                                                  Colors.black,
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
                                              'Number: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
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
                                                          'tel://${widget.contactNumber}');
                                                    },
                                                    child: Text(
                                                      widget.contactNumber,
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
                                                child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1, -0.3),
                                              child: Text(
                                                'FB page: ',
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
                                              ),
                                            )),
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -0.25, -0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 10, 0, 0),
                                                  child: SelectionArea(
                                                      child: InkWell(
                                                    onTap: () async {
                                                      await launchUrl(
                                                          Uri.parse(widget.fb));
                                                    },
                                                    child: Text(
                                                      widget.fb,
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
                                        child: Text(widget.details),
                                      ))
                                    ])),
                          ),
                        ])),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 2,
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                              Expanded(
                                child: Container(
                                  height: 420,
                                  child: InkWell(
                                    onTap: () async {
                                      await launchUrl(
                                          Uri.parse(widget.mapLink));
                                    },
                                    child: Image.asset(
                                      'assets/map.jpeg',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 2,
                                width: double.infinity,
                                color: FlutterFlowTheme.of(context).lineColor,
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  child: Image.asset(
                                    'assets/Reviews.png',
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ))),
    );
  }
}
