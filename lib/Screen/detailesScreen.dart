import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:watatrip/flutter_flow/carouselIade.dart';
import 'package:watatrip/flutter_flow/flutter_flow_theme.dart';
import 'package:http/http.dart' as http;

class MobileScreenLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: IconButton(onPressed: () {}, icon: Icon(Icons.backpack)),
            centerTitle: false,
            actions: [
              Image.network(
                "https://s3-alpha-sig.figma.com/img/53f7/7da4/04dcc8440a7fce7a98e3d15d79014e48?Expires=1669593600&Signature=OBO7lTvNrSo4QO8hM3QUs0DQVYQcCmQlMTdwiFWzn9RBTJmPDFsiicww-idwdJI2afsLn~7s2ytPq-mbKqQ9QaEkbEQY~DdJj-enT06n8FBZLgrBoAqAH5InDrvzoGcTpFHBMlek0ZwHhmDNIZlCKAlXg5cynJ2lb7GmLeE5wE3kCqlCyTT6F5SG14aHK08JN1HDYqGNRmHlpl6gMny-gvDtbN~rAFjDdwYHqIFMnS2Tuka7nRL4EXb236-EKL652TtIo2a6uis3dZriojt9nKSwLdL2KModNYDJatYTmsZA6379BKMGRvwkjNrrLUssPItP0mk~pI~t~Gmy8mffxA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                height: 400,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.grey))
            ],
            bottom: const TabBar(
                indicatorColor: Colors.yellow,
                indicatorWeight: 4,
                labelColor: Colors.cyanAccent,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'About',
                  ),
                  Tab(
                    text: 'Map',
                  ),
                  Tab(
                    text: 'Reviews',
                  )
                ]),
          ),
        ));
  }
}
