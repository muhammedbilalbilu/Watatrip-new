import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:watatrip/flutter_flow/carouselIade.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';
import 'package:http/http.dart' as http;

import '../flutter_flow/flutter_flow_icon_button.dart';

class MobileScreenLayout extends StatelessWidget {
  TabController? _tabController;
  @override
  Widget build(BuildContext context) {
    List<String> taps = [
      'About',
      'Map',
      'Reviews',
    ];
    return DefaultTabController(
      length: taps.length,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(1, 0.8),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-0.8, -0.05),
                                child: SelectionArea(
                                    child: Text(
                                  'Windfarm Nature Escape',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      ),
                                )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Container(
                          width: 90,
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            icon: Icon(
                              Icons.search,
                              color: Color(0xFFCDCDCD),
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
                ),
              ),
              Image.network(
                "https://s3-alpha-sig.figma.com/img/53f7/7da4/04dcc8440a7fce7a98e3d15d79014e48?Expires=1669593600&Signature=OBO7lTvNrSo4QO8hM3QUs0DQVYQcCmQlMTdwiFWzn9RBTJmPDFsiicww-idwdJI2afsLn~7s2ytPq-mbKqQ9QaEkbEQY~DdJj-enT06n8FBZLgrBoAqAH5InDrvzoGcTpFHBMlek0ZwHhmDNIZlCKAlXg5cynJ2lb7GmLeE5wE3kCqlCyTT6F5SG14aHK08JN1HDYqGNRmHlpl6gMny-gvDtbN~rAFjDdwYHqIFMnS2Tuka7nRL4EXb236-EKL652TtIo2a6uis3dZriojt9nKSwLdL2KModNYDJatYTmsZA6379BKMGRvwkjNrrLUssPItP0mk~pI~t~Gmy8mffxA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                height: 200,
              ),
              categort(
                tabs: taps,
              ),
            ],
          )),
    );
  }
}

class categort extends StatelessWidget {
  const categort({required this.tabs});
  final List<String> tabs;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            unselectedLabelStyle: TextStyle(color: Colors.yellow),
            indicatorColor: Color.fromARGB(255, 19, 49, 74),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs
                .map((tab) => Tab(
                      icon: Text(
                        tab,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ))
                .toList()),
        Container(
          height: 5,
          width: double.infinity,
          color: Color(0xFFCDCDCD),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class TabBard extends StatefulWidget {
//   @override
//   State<TabBard> createState() => _TabBardState();
// }

// class _TabBardState extends State<TabBard> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           title: Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//           bottom: TabBar(tabs: [
//             Tab(
//               text: 'About', 
//             ),
//             Tab(
//               text: 'Map',
//             ),
//             Tab(
//               text: 'About',
//             ),
//           ]),
//         ),
//         body: TabBarView(children: [
//           Container(
//             color: Colors.deepPurpleAccent,
//           ),
//           Container(
//             color: Colors.red,
//           ),
//           Container(
//             color: Colors.yellow,
//           )
//         ]),
//       ),
//     );
//   }
// }
