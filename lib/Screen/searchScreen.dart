import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:watatrip/Screen/searchScreendetailes.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/SearchScreen';
  @override
  _SearchScreenWidgetState createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreen> {
  List<Map<String, dynamic>> _allPlace = [];
  List<Map<String, dynamic>> _allPlacedata = [];
  bool isLodging = false;
  var jsondata;
  var mapdata;
  getdata() async {
    isLodging = true;
    var response =
        await http.get(Uri.parse('https://demo2.conscor.com/api/activity/1'));

    if (response.statusCode == 200) {
      jsondata = jsonDecode(response.body);
      mapdata = jsondata['Data'];
      print(mapdata);
    } else {
      print('error');
    }
    for (var i = 0; i < mapdata!.length; i++) {
      _allPlace.add({
        "name": mapdata![i]["name"],
        "id": mapdata![i]["id"],
        "name": mapdata![i]["name"],
        "image1": mapdata![i]["image1"],
        "image2": mapdata![i]["image2"],
        "image3": mapdata![i]["image3"],
        "image4": mapdata![i]["image4"],
        "image5": mapdata![i]["image5"],
        "logo": mapdata![i]["logo"],
        "address": mapdata![i]["address"],
        "contact_number": mapdata![i]["contact_number"],
        "fb": mapdata![i]["fb"],
        "details": mapdata![i]["details"],
        "map_link": mapdata![i]["map_link"],
        "price": mapdata![i]["price"],
        "offer_price": mapdata![i]["offer_price"],
      });
    }
    setState(() {
      _allPlacedata = _allPlace;
    });
    isLodging = false;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
    textController = TextEditingController();
  }

  void updates(String value) {
    if (value.isEmpty) {
      _allPlacedata = _allPlace;
    } else {
      setState(() {
        _allPlacedata = _allPlace
            .where((element) => element['name']
                .toString()
                .toLowerCase()
                .contains(value.toString().toLowerCase()))
            .toList();
      });
    }
  }

  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.1, -0.5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.05, 0.2),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: TextFormField(
                                controller: textController,
                                autofocus: true,
                                obscureText: false,
                                onChanged: (value) {
                                  updates(value);
                                },
                                decoration: InputDecoration(
                                  hintText: 'Search ',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF10606),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFF10606),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  filled: true,
                                  fillColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Color(0xFFE5E5E5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE5E5E5),
                                  ),
                                  child: isLodging
                                      ? Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : _allPlacedata.isNotEmpty
                                          ? ListView.builder(
                                              itemCount: _allPlacedata.length,
                                              itemBuilder: (context, index) =>
                                                  Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 10),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                                                            builder: (context) => SearchDetailScreen(
                                                                mapLink: _allPlace[index][
                                                                    'map_link'],
                                                                details: _allPlace[index]
                                                                    ['details'],
                                                                fb: _allPlace[index]
                                                                    ['fb'],
                                                                contactNumber: _allPlace[index][
                                                                    'contact_number'],
                                                                address: _allPlace[index]
                                                                    ['address'],
                                                                logo: _allPlace[index]
                                                                    ['logo'],
                                                                name: _allPlace[index]
                                                                    ['name'],
                                                                image1: _allPlace[index]['image1'],
                                                                image2: _allPlace[index]['image2'],
                                                                image3: _allPlace[index]['image3'],
                                                                image4: _allPlace[index]['image4'],
                                                                image5: _allPlace[index]['image5']))),
                                                        child: Container(
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFE5E5E5),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1, 1),
                                                            child: Text(
                                                              _allPlacedata[
                                                                      index]
                                                                  ['name'],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    fontSize:
                                                                        23,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                            )
                                          : Center(
                                              child: Text(
                                                'Not found',
                                                style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    fontSize: 23),
                                              ),
                                            ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
