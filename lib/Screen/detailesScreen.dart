import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watatrip/Screen/bookingScreen.dart';
import 'package:watatrip/backend/ApiCall.dart';
import 'package:watatrip/backend/Apidata.dart';
import 'package:watatrip/flutter_flow/canousel_slider_data.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

class DetailScreen extends StatefulWidget {
  final snap;

  const DetailScreen({Key? key, required this.snap}) : super(key: key);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Color(0xFFF1F3F5),
      //  6 call FutureBuilder
      body: SafeArea(
        child: FutureBuilder(
          builder: (context, AsyncSnapshot snapshot) {
            //  7 check contusion
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              // 8 check is it list or not  if it list call like this ( List<Welcome> api = snapshot.data!;)
              //  if not call like (Welcome api = snapshot.data!;)
              List<Datum> api = snapshot.data!;
              // 9 call Listview.builder
              return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BookingScreen()));
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size: 25,
                                color: Colors.grey,
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
                                      widget.snap.name,
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
                            'https://images.pexels.com/photos/1103808/pexels-photo-1103808.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            'https://images.pexels.com/photos/1757363/pexels-photo-1757363.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            'https://images.pexels.com/photos/1234035/pexels-photo-1234035.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            'https://images.pexels.com/photos/889930/pexels-photo-889930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
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
                                      'https://s3-alpha-sig.figma.com/img/20e7/8610/4d333c30e10913eecf0244ba2303e1c3?Expires=1670803200&Signature=WMdNwC7S3AdO-fIky6sDjHimzabhymBLDrGKvtZQkWXtBBKYuzbZjARXp1ZrdZW3voU~mIEpqj0ChOSy02EszBkEls8A1WbrZiPesWdrApqp0xXKNY5C4HBXJeLAM8YB5lT2njcoAneVrrbCb9CKe-53x1IEs9G1gU46q4tNsxK7nGz~U5CMbQb25wtcxkdf0BY23DEiCevSmdjIDi3SCcPY675zUlSwrYx8GAdp5Yn1kWd14LPDDawfOyh-TAmrPl7SrI6aRSL~YPwZ9jSPGDO3SrLU1dVxiG8ZcDMOxkcU9Col7P18rMcSwPhMI3JXvWmguoWShFEgrthdgFnOcQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    SelectionArea(
                                                        child: Text(
                                                      'Address: ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                                  -1, 0.1),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            widget.snap.address,
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
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 30,
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SelectionArea(
                                                    child: Text(
                                                  'Number: ',
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
                                                              -1, 0.10),
                                                      child: SelectionArea(
                                                          child: InkWell(
                                                        onTap: () async {
                                                          await launch(
                                                              'tel://${widget.snap.contactNumber}');
                                                        },
                                                        child: Text(
                                                          api[0].contactNumber,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 70,
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                SelectionArea(
                                                    child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1, -0.3),
                                                  child: Text(
                                                    'FB page: ',
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
                                                              Uri.parse(widget
                                                                  .snap.fb));
                                                        },
                                                        child: Text(
                                                          api[1].fb,
                                                          maxLines: 2,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                            child: Text(widget.snap.details),
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
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 420,
                                      child: InkWell(
                                        onTap: () async {
                                          await launchUrl(
                                              Uri.parse(widget.snap.mapLink));
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
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
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
                  ));
            }
          },
          future: getName(),
        ),
      ),
    );
  }
}
