import 'package:flutter/material.dart';
import 'package:watatrip/flutter_flow/canousel_slider_data.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, -0.05),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 5, 5),
                                      child: SelectionArea(
                                          child: Text(
                                        'Windfarm Nature Escape',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 20,
                                            ),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 5),
                          child: Container(
                            width: 50,
                            height: 100,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(1, -1),
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
                        ),
                      ],
                    )),
              ),
              CarouselImage(),
              category(
                tabs: taps,
              ),
            ],
          )),
    );
  }
}

class category extends StatelessWidget {
  const category({required this.tabs});
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
//   TabBarView _buildTabBarView() {
//     return TabBarView(children: [
//       Container(
//         color: FlutterFlowTheme.of(context).lineColor,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).lineColor,
//                   image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: Image.network(
//                       'https://s3-alpha-sig.figma.com/img/20e7/8610/4d333c30e10913eecf0244ba2303e1c3?Expires=1669593600&Signature=ByWfjynMVBdpJPst46Up82~EQFWYmrRjMQukKiSKyPLltQ3qvLNxNshaDpSm7Di7xR4ErT9H~FQOnhhR-An8yC8vWAut73WjrPo4zdRdSChk0kVJlx0r~1JbmxHP6Zjq7sxe02KlI4qbMDqL15ziHcXUhSeTxDWrRyb7Z1KZcddY7dQH4vlZyiujThbnVTUf4ixS9WlCCukrwzJ1HwQZys56D970-bh1S-2Hv6Wh1eXXOPLPt6nt2EF3Ud20Y8~zuSAMweAhnLF012q9btrJGKTL9BV5BYTDjHJsdVtSTMzt0r2-8ovRH5hK2xEEeTyEAOpySzzxKgl8JxBrZWwy6g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
//                     ).image,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'Address:',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 18),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 5),
//                     child: Text(
//                       'Monte Alegre Street Sltio Bugarin Brgy',
//                       style: TextStyle(fontFamily: 'Open Sans'),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'Contact Number:',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 18,
//                         fontFamily: 'Open Sans'),
//                   ),
//                   Text(
//                     '0928 552 5443',
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 15,
//                         fontFamily: 'Open Sans'),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'FB Page:',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 18,
//                         fontFamily: 'Open Sans'),
//                   ),
//                   Expanded(
//                     child: Text(
//                         ' https://app.flutterflow.io/code/sign-up-loe007',
//                         style: TextStyle(
//                             color: Colors.blue,
//                             fontSize: 15,
//                             fontFamily: 'Open Sans')),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'Camping is a dream of every outdoor of every out',
//                     style: TextStyle(fontFamily: 'Open Sans'),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//       Container(
//         color: FlutterFlowTheme.of(context).lineColor,
//         width: MediaQuery.of(context).size.width,
//         child: Image.network(
//           'https://s3-alpha-sig.figma.com/img/d7fa/8e59/2d1221b1a64cfe02be9823f9107db13e?Expires=1669593600&Signature=BDr~bp9zuTR8GUWxKhwu2fNDOUa6xQmYTSLNCIux9hCpf51fjtVT8Fkroa4QAx1egdnvfHOSjroC9dKAxiK3KPNjg-mouNT2MzOYmlMVoNB8HyIXUQ~Bug2i4eGvA-Rs7aICXIwTDc~~dkL7CgM5QcF13b-pFptFat0vrTpLnRfdMQ8mKUW~rQalJp7h2PiGeyDyIzGFDeduNO0Tk5DpXJHT8mxb6JZHrNF~udhEGhy2nlcLgUa5svNTCoG-dp~wZUFJlbtZ8pBBZhRHuaAAt8cYCLu4RGNv1Rh65CXccnvZ2oGDRgAiN7Qjppf5Ga6s3sv~DAxiHmuRdAoSQteMFw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
//           fit: BoxFit.contain,
//           width: MediaQuery.of(context).size.width,
//         ),
//       ),
//       Container(
//         color: FlutterFlowTheme.of(context).lineColor,
//         child: Image.network(
//           "https://s3-alpha-sig.figma.com/img/2878/95d0/283157c34eb9e207d3c2daab352cc249?Expires=1669593600&Signature=ML9wwqg4xX6Y4vkoZPwmvq37~1oGuy3Nh3eiYk9OAb5foaVj40BIIjh7bIYe~~BZ8L~F5KhdVabPn4-rXLX98zKUq5RMGVo54rQxDi2wTcDPTgHwnQ6w4o3VojbvNnwN1n0f7iuu9ipvpV8qiucRtKvL8UrSNn4bUfJczEhw7VHca5YOtEY28FGVAF1xfC~C8lBTKSHLM~BlLm134OsIl6J2A1hnT2O0YJGHAS7Bi5ElA5Shp8NFAgi6oZeEu9YQF-pYDYZW~UDFBRjIk4cdcwGMqbKfhtvAi81y0CmBe57ppDmS~mjhfE0cvdfry~a6tYm2lizzNpxdUPKzFuFmIw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
//           fit: BoxFit.cover,
//           width: double.infinity,
//         ),
//       )
//     ]);
//   }

//   TabBar __buildTabBar() {
//     return TabBar(
//         indicatorSize: TabBarIndicatorSize.label,
//         labelColor: Colors.black,
//         tabs: [
//           Tab(
//             text: 'About',
//           ),
//           Tab(
//             text: 'Map',
//           ),
//           Tab(
//             text: 'Reviews',
//           ),
//         ]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body: DefaultTabController(
//             length: 3,
//             child: NestedScrollView(
//                 headerSliverBuilder: (_, __) {
//                   return <Widget>[
//                     SliverAppBar(
//                       backgroundColor: Colors.white,
//                       pinned: true,
//                       expandedHeight: 400,
//                       bottom: __buildTabBar(),
//                       actions: [],
//                       flexibleSpace: FlexibleSpaceBar(
//                         background: Padding(
//                           padding:
//                               const EdgeInsets.only(top: 70, left: 5, right: 5),
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: MediaQuery.of(context).size.width,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   color: FlutterFlowTheme.of(context)
//                                       .secondaryBackground,
//                                 ),
//                                 child: Align(
//                                   alignment: AlignmentDirectional(-1, 0),
//                                   child: FlutterFlowIconButton(
//                                     borderColor: Colors.transparent,
//                                     borderRadius: 30,
//                                     borderWidth: 1,
//                                     buttonSize: 60,
//                                     icon: Icon(
//                                       Icons.arrow_back_rounded,
//                                       color: FlutterFlowTheme.of(context)
//                                           .lineColor,
//                                       size: 30,
//                                     ),
//                                     onPressed: () {
//                                       print('IconButton pressed ...');
//                                     },
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 color: Colors.white,
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       width: 250,
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryBackground,
//                                       ),
//                                       child: Align(
//                                         alignment: AlignmentDirectional(-1, 1),
//                                         child: SelectionArea(
//                                             child: Text(
//                                           'Windfarm Nature',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyText1
//                                               .override(
//                                                 fontFamily: 'Open Sans',
//                                                 fontSize: 25,
//                                                 fontWeight: FontWeight.w600,
//                                               ),
//                                         )),
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 100,
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryBackground,
//                                       ),
//                                       child: Align(
//                                         alignment: AlignmentDirectional(0.7, 1),
//                                         child: FlutterFlowIconButton(
//                                           borderColor: Colors.transparent,
//                                           borderRadius: 30,
//                                           borderWidth: 1,
//                                           buttonSize: 60,
//                                           icon: Icon(
//                                             Icons.search,
//                                             color: FlutterFlowTheme.of(context)
//                                                 .primaryText,
//                                             size: 25,
//                                           ),
//                                           onPressed: () {
//                                             print('IconButton pressed ...');
//                                           },
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               CarouselImage()
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ];
//                 },
//                 body: _buildTabBarView())));
//   }
// }
