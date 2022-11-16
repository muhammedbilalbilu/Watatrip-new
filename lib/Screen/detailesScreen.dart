import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:watatrip/backend/ApiCall.dart';
import 'package:watatrip/flutter_flow/canousel_slider_data.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';

class MobileScreenLayout extends StatefulWidget {
  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with TickerProviderStateMixin {
  // Api call
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apicall();
  }

  Map? databody;
  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://appsara.in/watartrip/?id=1'));
    if (response.statusCode == 200) {
      setState(() {
        databody = jsonDecode(response.body.toString());
      });
    } else {
      Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  TabController? _tabController;

  final String mapimage =
      'https://s3-alpha-sig.figma.com/img/d7fa/8e59/2d1221b1a64cfe02be9823f9107db13e?Expires=1669593600&Signature=BDr~bp9zuTR8GUWxKhwu2fNDOUa6xQmYTSLNCIux9hCpf51fjtVT8Fkroa4QAx1egdnvfHOSjroC9dKAxiK3KPNjg-mouNT2MzOYmlMVoNB8HyIXUQ~Bug2i4eGvA-Rs7aICXIwTDc~~dkL7CgM5QcF13b-pFptFat0vrTpLnRfdMQ8mKUW~rQalJp7h2PiGeyDyIzGFDeduNO0Tk5DpXJHT8mxb6JZHrNF~udhEGhy2nlcLgUa5svNTCoG-dp~wZUFJlbtZ8pBBZhRHuaAAt8cYCLu4RGNv1Rh65CXccnvZ2oGDRgAiN7Qjppf5Ga6s3sv~DAxiHmuRdAoSQteMFw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA';

  final Uri urimap = Uri.parse('https://goo.gl/maps/xd34SeZLAP2Tp6X49');

  @override
  Widget build(BuildContext context) {
    List<String> imagesadd = [
      databody!['image1'],
      databody!['image2'],
      databody!['image3'],
      databody!['image4'],
      databody!['image5']
    ];

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
                height: 70,
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
                            databody!['name'],
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
              SizedBox(
                height: 20,
              ),
              CarouselImage(
                imageadd: imagesadd,
              ),
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
                                  await launchUrl(
                                      Uri.parse(databody!['map_link']));
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
                                                            'Priya',
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
                        child: Column(children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              databody?['logo'],
                            ).image,
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 170,
                          decoration: BoxDecoration(
                            color: Color(0xFFF10606),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SelectionArea(
                                        child: databody == null
                                            ? Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              )
                                            : Text(
                                                'Address :',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 20,
                                                        ),
                                              )),
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: SelectionArea(
                                              child: databody == null
                                                  ? Center(
                                                      child:
                                                          CircularProgressIndicator(),
                                                    )
                                                  : Text(
                                                      databody!['address'],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                          ),
                                                    )),
                                        ),
                                      ),
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      'Number:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                    )),
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: SelectionArea(
                                              child: InkWell(
                                            onTap: () async {
                                              await launch(
                                                  'tel://${databody!['contact_number']}');
                                            },
                                            child: databody == null
                                                ? Center(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  )
                                                : Text(
                                                    databody!['contact_number'],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF2919CA),
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
                                width: MediaQuery.of(context).size.width,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      'FB page:',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                          ),
                                    )),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.4, 0.7),
                                        child: SelectionArea(
                                            child: InkWell(
                                          onTap: () async {
                                            await launchUrl(
                                                Uri.parse(databody!['fb']));
                                          },
                                          child: databody == null
                                              ? Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                )
                                              : Text(
                                                  databody!['fb'],
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF2919CA),
                                                      ),
                                                ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ]))
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
