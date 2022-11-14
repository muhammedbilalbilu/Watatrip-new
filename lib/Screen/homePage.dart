import 'package:flutter/material.dart';
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1, 1),
                            child: SelectionArea(
                                child: Text(
                              'Hello, John!',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Container(
                              height: 100,
                              width: 150,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).lineColor,
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
                                      'https://s3-alpha-sig.figma.com/img/4ed0/066a/3cdf8e391c09a4add5f8ca5e47ce412b?Expires=1668988800&Signature=au-PekqbJ-4RqYY5awM2yek4vyD86IeYg0gi9Ci91yr-kyB5e50Fy08qrlQWN9O1e7YBUIGrJJeSWAFgy-fy77BunKYEhcLIzE-EIzp4kukrewOqAlgF8kCkDOj659TqDZrPuRVHpQwHLmDlBsdL0jBlkcVQFtHW1U2CtOMy-b1iJoPqDaIX62ZnI~kdJT3PkQTKVsKv6PWXWp8CL4zVdGCrDycpaofM0CJMprAmOwCTNqn9dLagW2cT0IiEUFbF9sstieevYUZ6psXD1diyfMI8G6VYg~16xbvywTSKE0hd6NjlxJ1IPMovFaMVUHlGIDM4pv8ySxjhDQHocZVkLA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Container(
                              width: 150,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).lineColor,
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
                                      'https://s3-alpha-sig.figma.com/img/2222/bc1f/6977a9eb477ae86fb1879dc9f4601f32?Expires=1668988800&Signature=SVhscqspcLQ1RjCOKmEEN5MakWH3wHWBmdK9QRrwzWQDaSV8vqv5FCeFc7Se5r9qt9IfZRfXSEOBHA4JpRXAykjf5YIRQ~K3OKAeRvgMZi-NJYM~UacC3ohE8TNq7gk9I1QpxunFfg~X15kIJjxEOX76Cmhjv1~jk8njyqxSrnFAz8w2eMtJ-yQrwT-wRED~RbnqfRUgDAknwt9pWHno9E3Y1tiB7xg5juVDdaxSuieNfoV2Fvvh4qVdlhdMjIasdFUNDqceNoyRxvVNqTTqJZbcBAasuW0KZ1aNi3NszutEMUBaYXSeuRc8-NLv~N235Dl7w1Efq1lunekXkCsjew__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                    'https://s3-alpha-sig.figma.com/img/1132/32d8/df0432d090aec9ce51c038553b96c1c0?Expires=1668988800&Signature=eY1H9DYx-1FoYQpv~uxvEjLDbr8uFEUm2mzS1QjCLhR52IJEHs1Aef2sqR0Ubwr5uiJsv3Xo8oekF8FLOh4tKvxQudmTxOOZeHmfJmws9wuqhtNpBjISetfaEg-nouzU0LcmcgmU69I8F~SlfjNpcwofl2l9S5-REMu1IZTqnvH8FxMkbuiSUMCJ41m2AoFc2gXfvRDsR-Wq1TxCYk3rRLb-6ztP9WwO4draCQnzi7PL8UaDuuMZHxmFCCWH4eGxReYqcc874sHVIdtIxrs9YmQhY5p0IlUnrcS3e942elSH~nAeV-rlBYr-cQrfxA2SwevSbWgNA-JaNywwTFBg8g__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/d012/09de/89f7f4f77b940c6990901e0366e5c27b?Expires=1668988800&Signature=D9hiMBZKgEqjnqQG~PjGa5d9PyVGJCNg~rBNChhYQ9fVe0jrVEcw8uMgB7H4oJqH2mA7rSmJOYUbUEHnhTO0K9cY5PMWXvZX5BuyNu1Db4QwuvE6hR-LsqHTHvObYUWuogkcseih~5PzhORQnNqSKRvu-c3SzvqvjFM2B5OND634S6iu-oTNsP1AhvbLo6rioGVS3~BPWaTEenJPoOHPgcIaGDFjZXEYVu5vwy-Fgb7aGE1flGpSn0kapi8BD~ssudHobo2W5leBL-MxdHjMhxScnFLTE0W0MfHb6NR4UJRpM91QjjDTGOyRQhRPdT7o~n7G~oNyQyrfsLDFAFii2A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/dfbc/3fbe/50594492632b8ec5dde2f3fe861701f1?Expires=1668988800&Signature=e~FC0l~Op4dSndUxmy45kz4~MdmUfIRXIpQq54LE2LbaI2F9CORGttI1T1P9ZrmL5UCpvRbFajMlDnOb6LwweGKsd4Tl7WWw7LD844IWDW6nKEsdwcF3hsgR36I7P3E3lG6aMrgBnyaGyMw1uKLSkZPRAR95xndkgata-mXJQtfQAd1ionuUAd9-WVMvyRk-sHBzAuKUZULJEtcuSEKalSvjmKVh5C56nu39Xqs5y1NStpJ1fAL1JlJlD4rv17WsyAPKMStFO8Kmfht8cgy-P55IRFsplDIemfArY4L~~dFoo7vson6JnnjWl4d606SSBN8wZsXYPmJAOiBY~UmKDQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/64a0/d611/471e337b6930a349109be0aa091c8a49?Expires=1668988800&Signature=hF87GMXThUoFItrTR8DH-wB0lu7ghfofC6Tz2a2n9WgH0A77pgdPI6EwJB1l8Cao2YLZoCjQ0LsKuycmvGU7-TJkjRIS0NNB9cVnpfsHEgb2lHhw6v7ISzbshXkV24IoEW~UkgI56uskFGvxWw889fhuVxfrchDwL2FUGHP83uZ~7LA5Z6Kn3maskMwQ2q0qnjsihFnC~DE1oT~oKJ95g0ldGfRtJPqYM57JY4rvyKFUAnih1L0DB4JPlcFJXu50SoX8GPannHQ-Ki2~suB4Sd-onlaLEJ2YN6dZF3VyCaFqO2mPj986Y~79KOggeMLzUuBujQ2quvS9xTC4ChGR~w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/91a4/c914/7f94390b87222410701dfa2456a1950e?Expires=1668988800&Signature=YWl-rGu50GY1mh9LwpmGoDIq4fW6Ip213739dtF4ZOXDHuubWijTqwy6Hd3UVWw2dZaxDLiqlCyHnT4SS-NwlWbXka2wFRDTKNOp7boMyD1VphEl9c0zjxA8mQpiErlr9dq8EnAqoyXXnGuFmqK-2S2j8TSjkl7EYM6utMEhaCSlV1mgmLyF3NQ94iBNLOD8op7QUU8qV9jUeonvkpBKKpUA5B8ZTL1KFjPSlxUfx~3QvIUSqdv54u3QdzYQYanrVDcjHzMCBmcsH~yBF~Q-4S0qjwVX3Ab9uEF~3z767liy7lgWxKZ7iKrLWGwsE4hJvKmQAKeIrMgkSLRpEp8mDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/8e05/f341/d0511457e4479367f11d4eef7c00eea4?Expires=1668988800&Signature=B1g4utFJfL4wYv8nWE~nca-BQC-1-l1kRvrsar~UZ9XkSlyBlbERbR8O8kP4qCcvyjqDYWcL2i0GHEb8iAG-8fDPprvuHu0tFUyrDhfk2sZ1Hsg78yckEgpJDz6TUEAvWaUxLl3SDDsvDnL3qLHh1dn0L0Qb0tsvw2zHfRN2eY5Xx6XPwI795eTYE-BDjmpnLxHZiVNUKQABepDJJowpcw5yZ7P2AY~kzhat1F9HUdWrNAiwv-KmzvU3nZnMOHyM5u86rkEz2osLDKUEgMY4scmF0iAKsyJzwt-ujEE~ACq6NLtTd5W1jvVl7JV-7Y3nduArNpl~~w0xlz7YWxVP4Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/273f/4f8e/d91f1f3ffc97c275695c658a5f105520?Expires=1668988800&Signature=Xu~mk7d2fRYjlbBX19nt8Ud7alGffAqlxJmvU4CXg1iCvDs~frWQGOBaqaLXE5wOnQVGx8LOnubqR7xoHyx8MQp1nGmb-t9cvqK8C~WquLz9M3mPnrvGRhOVIKjPf-R0jtk0bi736Mz~j7BJ5eq6~brxs-tCdrYpJL4qXaThbcUVy-FBabaaXu~eQpLEzRm0J-SsI7dbSCqUP7AEFoLuCQk31Ot7KuIzCoBHK00pnc6NGLuubjc5d2kHyajMkJMYqHEwcx41iGJgDACKnmEhPwKwi0KKCPilg9wzCMQXW~s17y1Ipkzxdhh9zyl3Xrnon8kWSRyMV0A0cjSMUNQ4zw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                                    'https://s3-alpha-sig.figma.com/img/575f/393a/6559d558b39f8d619db835bed8c60a80?Expires=1668988800&Signature=EzbpcdgOsMQ6hNKGlM3WGeOp4SPuSnDO3c72ZUUOk6tVFbzwCQuL-pMX-foFH9qgii0y-a9LOvERrZeM5QdsSYl0GQktgYTwXNp8UdPJx6x2eYi~ei5HKNk6TbODItAEp6gw-J4xPBbq2R2kW95VAWa1nEJsd2IKtjh0utQ2dNtJAERGgDGH6KatV9Up2PiS19-QAnHrMuwT700qVlBWQiiPIQc0AGiZ6MtAKAwr1UlTF6klAFrAth8Zk8ZK5y-3diUyEqb0mSU1SFGV44uxNxZe1bfkkpEeRFJesnieibORMZeug0URJjfXfhHFVGixtvizUH6RAV9BIKdOItZ~lA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
                  )
                ]))));
  }
}
