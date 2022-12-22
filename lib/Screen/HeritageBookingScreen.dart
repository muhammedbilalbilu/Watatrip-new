import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:watatrip/Screen/TourOfferPage3.dart';
import 'package:watatrip/Screen/detailesScreen.dart';
import 'package:watatrip/Screen/homePage.dart';
import 'package:watatrip/backend/ApiCall.dart';
import 'package:watatrip/backend/Apidata.dart';
import 'package:watatrip/backend/apiFirebase.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';
import 'package:watatrip/flutter_flow/flutter_flow_widgets.dart';

class HeritageBookingScreen extends StatefulWidget {
  static const routeName = '/HeritageBookingScreen';
  @override
  State<HeritageBookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<HeritageBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
      ),
      //  6 call FutureBuilder
      body: FutureBuilder(
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
            return SafeArea(
              child: ListView.builder(
                  itemCount: api.length,
                  itemBuilder: (context, index) {
                    getApiData() async {
                      print('workin');
                      String res = await ApiFirebaseData().Apidataget(
                          name: api[index].name,
                          image1: api[index].image1,
                          image2: api[index].image2,
                          image3: api[index].image3,
                          image4: api[index].image4,
                          image5: api[index].image5,
                          logo: api[index].logo,
                          address: api[index].address,
                          contactNumber: api[index].contactNumber,
                          fb: api[index].fb,
                          details: api[index].details,
                          mapLink: api[index].mapLink,
                          price: api[index].price,
                          offerPrice: api[index].offerPrice);
                    }

                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              snap: api[index],
                            ),
                          )),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    api[index].image1,
                                  ).image,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              child: // Generated code for this Column Widget...
                                  Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Icon(
                                          Icons.bookmark_outline,
                                          color: Color(0xFFFFB100),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        api[index].name,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 20,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 80,
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
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white),
                                                  child: RatingBar.builder(
                                                      itemSize: 20,
                                                      minRating: 1,
                                                      maxRating: 5,
                                                      itemBuilder: (context,
                                                              index) =>
                                                          Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                      onRatingUpdate:
                                                          (rating) {}),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 9),
                                                  child: Text(
                                                    '(5,817 review)',
                                                    style: TextStyle(
                                                      color: Color(0xFF9F9F9F),
                                                    ),
                                                  ),
                                                )
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
                                                .secondaryBackground,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.65, -1),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Icon(
                                                    Icons.location_on,
                                                    color: Color(0xFF0F5862),
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: 100,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1, -0.8),
                                                    child: Text(
                                                      '1.3 km from current location',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Color(
                                                                    0xFF363636),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.8, -1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Container(
                                            width: 100,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1),
                                              child: Text(
                                                api[index].offerPrice,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color: Color(0xFFFF4F4F),
                                                      fontSize: 22,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.9, -1),
                                        child: Container(
                                          width: 100,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-2, -1),
                                            child: Text(
                                              api[index].price,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF9F9F9F),
                                                    fontSize: 22,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, -1),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  48, 0, 0, 0),
                                          child: Container(
                                            width: 70,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -0.5, -0.9),
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              TourOfferPage(
                                                                apidata:
                                                                    api[index],
                                                              )));
                                                  getApiData();
                                                },
                                                text: 'BOOK',
                                                options: FFButtonOptions(
                                                  width: 130,
                                                  height: 40,
                                                  color: Color(0xFFFFB100),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.white,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))),
                      ],
                    );
                  }),
            );
          }
        },
        future: getId5(),
      ),
    );
  }
}
