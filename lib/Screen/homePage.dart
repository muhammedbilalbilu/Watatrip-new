import 'package:flutter/material.dart';
import 'package:watatrip/Screen/bookingScreen.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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
                        'Hello, John!',
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
                      child: Text(
                    'Recent Searches',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
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
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BookingScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  color: Color(0xFFCDCDCD),
                                  offset: Offset(0, 10),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.65, -0.8),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        19, 13, 5, 5),
                                    child: Image.network(
                                      'https://s3-alpha-sig.figma.com/img/2222/bc1f/6977a9eb477ae86fb1879dc9f4601f32?Expires=1670198400&Signature=ZXTHyrlRfVIpxUejFzlZBwCOmkFkIPz-kVC7xW8VdH5aVYbS2T5zLoR-gyBMGUooNYKH65drmLdZhXaya9gUWYnj8LWdDto6SI32qeJ9D7QCE0XtG7GqfspYnsAWbP5oTbWabyhzXZ3qkTA~muBOcjQNHnXoXWqjGLmwbVBDhhoxUHJkmc8LFpluOyPRqv22QeKMeBKvnLFdKQ89Dq-q0CL55xGk9pwNPsaaJ41Mk4JT0vnn5x3To--jyZ13SCY8cK64Pj4lWJS8-lAko48JyZr3N0ng3BPEct4WOr0FoNKdVZ2cPww2AoDXB4QiHvoWY-4PHIUT9Ak0GiCdfE9~cw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        9, 2, 2, 2),
                                    child: SelectionArea(
                                        child: Text(
                                      'Capitiol commons',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 12,
                                          ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => BookingScreen()));
                        },
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).lineColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1,
                                  color: Color(0xFFCDCDCD),
                                  offset: Offset(0, 10),
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 13, 5, 5),
                                  child: Image.network(
                                    'https://s3-alpha-sig.figma.com/img/1132/32d8/df0432d090aec9ce51c038553b96c1c0?Expires=1670198400&Signature=TF-CVKo7aDE5dvqnWMRceKRYxzo-4icoOsDFL1XAv~gtnfGbXsn3ZEiNTQpgssFLpyQKHLdHvlMHmdczwGp5wMeISXGznkCTfDR-kovfEDzYX1yFEc7-S5Kh-glOlJ4zOPeGWG-mamVZC7SZF0oG7kQgCNjcyoPNpj03YBSKbpBQZtX6n1kNOOuwv68Hzk8DU~t-yZPaq3I89Y0h-GsNEQfv~9ORAlHGRkUD5ubu8u6WnksTp8qRWqLxyyQkS7k9ftE~TNxNLbNlKadJHS2rtqz-fwKYJUzoVyLm0P0cr-zm6ce5ReXgDFekwpj9Ha-jgiYOu6i8NJFJvTvnj90RSg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2, 2, 2, 2),
                                  child: SelectionArea(
                                      child: Text(
                                    'Estancia Mall',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 12,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
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
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookingScreen())),
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/d012/09de/89f7f4f77b940c6990901e0366e5c27b?Expires=1670198400&Signature=Ft0IXXzysgnT3S57LMedCf4wjCNsvHXAdwPW4OZx4JXQ8qChUrIUuQbgGKLnrYsBOq-KHfZvkrzYy4NdoRu0sHAiSZz2wkZqa9PRPr5SFAg~GRNWOIZj1impu8I6LSqwsXJXOTbqOmQaxI7rswyle56XtrjBfXO5JQ-PzoTfIHWOJdUgJ2jRIq4IgHyp87AH7OUVsmZDFCZAppQ~KIBTYqeSKY0aOC19NDbWa-M-b3Xv5RY6RO5F7ED7Yj4HTN4qbLssYIDoiGKhrkIFtSyNo~WCZZMiDjNQwrtfPZOSNq1HroeDHt-cCEA~sMeQVg3pz52g67PTL1F1Lz5UmbrLAA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/dfbc/3fbe/50594492632b8ec5dde2f3fe861701f1?Expires=1670198400&Signature=FgqlaZBYBx4Jn1Cx7c3zHK207JZe-tlHPagsEBPKxQWHNKv8zswtFDa0PiWyGd4cxmZdAiGTMl7ilUN8uc7r~gzrMVLH~x22eM1Fta2O1k49qoe3~QrWPcb5lMs5LuhmILcBtRN5vTPXpmzwM4SWCoyF1AZkWoeepcqVbkXtSDcba2X~awmLhe~TNw5De2DyOCdNP0xSzf23fHvmh~lZLlt-ozM6VJ0S7nw2rSyf0LLR~pauE-mHpnJNcb09vU2sG~9qVsgvxsb52vMZs9g0Y83j7Tikt9LSEEZkUmzOryCy0CNTDLbWEkQNcb8oI~9~iNsStAs6f5QrgmCvALZPeQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/64a0/d611/471e337b6930a349109be0aa091c8a49?Expires=1670198400&Signature=JY8Tb4rZL3Alonk1y9RtzFVAt994Uqpt0xrXXeWIYeNN0jz-KujL1Co~R1ZL-E59pIiAcKDi4CzckASlc2ui0LWnhfmktXYIcZMpI3XwXwHbtptd-n8DM0U6AzJRbzLzgZatQNXKQepxkw4jD6ZOVHrt3PGmGDCfygujLROgV5pi9gspJiiqrYza3L6C7pEMXDPvnChG6lZR~ko6F1eBSF08MB4d-puTTuYyWc31FqMLARCo3RBefV7bw4TxZSLjl1XMa~yA-22Zpai2jkPWNsKtnIYPZ8rCrnN0NRTPWg6tp9i~RyJK9LgXXyiU97WMHB3FAhj-NEsxS~EU~9ctUQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/91a4/c914/7f94390b87222410701dfa2456a1950e?Expires=1670198400&Signature=aeYuWQu1DCaNsCjBYvtgzutlqYswgCcOL81RNrlVlNYZNnuRGSGKpmCuoJy5SSMmqZWMamBp9YYty2h2UvqECL25K8xhlSYVLrQ9MPomp4qJAVenC-6Ki8rel8hQVx1Hg0KQKJwh0-6G-0IJLsLTuoDwxxcAQJhMesQmvizzaVGZiblI~KqXB~8SQW-QGbjzfAnvdJYA8PndezVgKJzBJ4tQMgJvAEzpF6bU8xJ3dDBzBbPNQUz0eYN8VE3KBC4TLpDuP2S~NNZFGCQ1EEQ3dFjMQwajmF7ppl1yA2eJrzkL9E9WcCJ5btW9eVIV3drinKDGyePtEHMdmHVH8pHSEw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/8e05/f341/d0511457e4479367f11d4eef7c00eea4?Expires=1670198400&Signature=XpFqS17X~SesrxSmYUJM5qbsKK1XUcx-sB4KggZ6ogHOPlN1zsB4w878IWfDu053ZuUo5nWOZyKoD5wW0lCZezJZoSnQcIJygoCRUJ-y3p6J8UlcryAuzuAcMXiHU73~b1QKkCayso9JCzHHwuk26T3dHitlE-eGniQB2DMBAkap4vB7K1Ra~zU1loNwj-meVtO1-Y47RlCvYX-xCPC1WiM1aewViFg5l2xM42uXhnOFVWGsFzOeHHsPA8OD7l35Rm9zSh~fHTzWX~uzz1KWH3gU2alrZ7TV9MNShSWzyMR2VWUPbt3Zu2l2kSKY54upeLKPExO~ZyRu~9KtlVDMOA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/273f/4f8e/d91f1f3ffc97c275695c658a5f105520?Expires=1670198400&Signature=JdKyH-EHV1q-tyJZxqVTgXmdeECGWRJVxleUmiinPUWu-ZIlUrjqUX3WDr-2DxZ-cASrOc3NQUCc6PXiJYYQnBLFE3OCniP1zbQemnhm2fdLyADNwMREs15GNr6nOosRyvyEo1RA6dP9MjEN1vRNayDUIHfNoGr-0WRQLOof6gzORFMM2yDUd~jxo6aQKB-fvegCFNHqaakK-xnV0shX-XtSNlKcBnAhxGH~DNUk7-YG5bpmH4AiUM-rcboaLiMEyfcMaFgajnEW25EyhakHe22GK9b2UduHuAuSUnVULz93cSBwwll6SYpOo08qI9guENOdvH1ab4nuH25RgB7fWA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/575f/393a/6559d558b39f8d619db835bed8c60a80?Expires=1670198400&Signature=ZuluYPy0giOEOUEtteSStGTTwPWd-hkptXl~gxTywWSjOODM5uMI5o5mUenSHpPQJ-7RvZ84tIDWVg3j7DvYpHIJ27P92XbLsvtYDQJQPVNk3rD7-fdMuPTddlsvG-khTrDiHMaEV1rmv81imXstbsTUf8nCTY7hgbbCgNfvPkHlseKjMitgyJYGjRj676H06dLkAG1QNhnnuE-ZFr3BcEA2ywm1g49dNbvOrzP~3USeyNui3ic8u6amrfR-6A5tC29H~jeiDZtDtrKTTzcDu~oxomzXS9RVQGnAoOL4TW58GI-oMQ7Dpcy33t~FqM66a6zjuGl96GPqvWuZlV~gVw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://s3-alpha-sig.figma.com/img/1132/32d8/df0432d090aec9ce51c038553b96c1c0?Expires=1670198400&Signature=TF-CVKo7aDE5dvqnWMRceKRYxzo-4icoOsDFL1XAv~gtnfGbXsn3ZEiNTQpgssFLpyQKHLdHvlMHmdczwGp5wMeISXGznkCTfDR-kovfEDzYX1yFEc7-S5Kh-glOlJ4zOPeGWG-mamVZC7SZF0oG7kQgCNjcyoPNpj03YBSKbpBQZtX6n1kNOOuwv68Hzk8DU~t-yZPaq3I89Y0h-GsNEQfv~9ORAlHGRkUD5ubu8u6WnksTp8qRWqLxyyQkS7k9ftE~TNxNLbNlKadJHS2rtqz-fwKYJUzoVyLm0P0cr-zm6ce5ReXgDFekwpj9Ha-jgiYOu6i8NJFJvTvnj90RSg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                      ],
                    ),
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
