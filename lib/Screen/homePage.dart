import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:watatrip/Screen/bookingScreen.dart';
import 'package:watatrip/backend/ApiCall.dart';
import 'package:watatrip/backend/Apidata.dart';
import 'package:watatrip/backend/User.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';

class HomePage extends StatefulWidget {
  final apidata;
  const HomePage({Key? key, this.apidata}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  List<ApiFirebase> _Apidata = [];

  fetchRecords() async {
    var records = await FirebaseFirestore.instance
        .collection('Apidata')
        .doc(user.uid)
        .collection('data')
        .get();
    mapRecords(records);
  }

  mapRecords(QuerySnapshot<Map<String, dynamic>> records) {
    var _list = records.docs
        .map((data) => ApiFirebase(
            address: data['address'],
            contactNumber: data['contactNumber'],
            details: data['details'],
            fb: data['fb'],
            image1: data['image1'],
            image2: data['image2'],
            image4: data['image4'],
            image3: data['image3'],
            image5: data['image5'],
            logo: data['logo'],
            mapLink: data['mapLink'],
            name: data['name'],
            offerPrice: data['offerPrice'],
            price: data['price']))
        .toList();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1, 1),
                      child: SelectionArea(
                          child: Text(
                        'Hello, ${user.displayName}',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.65, 1),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.search,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 25,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 3),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-0.95, -0.50),
                  child: SelectionArea(
                      child: _Apidata.isEmpty
                          ? Text(
                              'Most People Loved it',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 20,
                                  ),
                            )
                          : Text(
                              'Recent Searches',
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: _Apidata.isEmpty
                      ? FutureBuilder(
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
                              return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: api.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Container(
                                        width: 135,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Color(0xFF9F9F9F),
                                              offset: Offset(0, 3),
                                              spreadRadius: 0,
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.25, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 7, 8, 4),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.network(
                                                    api[index].image1,
                                                    width: 100,
                                                    height: 100,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 2),
                                                  child: Text(
                                                    api[index].name,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 13,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }
                          },
                          future: getId1(),
                        )
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: _Apidata.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Container(
                                width: 135,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0,
                                      color: Color(0xFF9F9F9F),
                                      offset: Offset(0, 3),
                                      spreadRadius: 0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.25, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 7, 8, 4),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.network(
                                            _Apidata[index].image1,
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 2),
                                          child: Text(
                                            _Apidata[index].name,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 13,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 10,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
              child: Align(
                alignment: AlignmentDirectional(-0.95, 0),
                child: SelectionArea(
                    child: Text(
                  'Things to do',
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Open Sans',
                        fontSize: 20,
                      ),
                )),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: 

                        ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/3face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Agri-tour',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/4face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'City Sightse...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/2face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Concerts',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/5face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Cultourl  Tour',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/6face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Heritage',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/7face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.9),
                            child: SelectionArea(
                                child: Text(
                              'Outdoor Re...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/8face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.9),
                            child: SelectionArea(
                                child: Text(
                              'Sports Tour',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: ,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/9face.jpeg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.2, 0.8),
                            child: SelectionArea(
                                child: Text(
                              'Water Adve...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 15,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
