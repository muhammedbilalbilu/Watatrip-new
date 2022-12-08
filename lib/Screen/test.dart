// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:watatrip/Screen/Tour%20Offer%20Booking%20Review..dart';

import '../flutter_flow/flutter_flow_util.dart';

class TourOffer extends StatefulWidget {
  int i = 0;

  @override
  State<TourOffer> createState() => TourOfferState(i: i);
}

class TourOfferState extends State<TourOffer> {
  DateTime? date;
  var text;
  bool datebook = false;
  final now = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ShowDatePicker();
  }

  void _ShowDatePicker() async {
    setState(() {
      datebook = true;
    });
    date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025));

    if (date != null) {
      setState(() {
        text = DateFormat('yyyy-MM-dd').format(date!);
      });
      setState(() {
        datebook = false;
      });
    }
  }

  static List name = [];
  static List email = [];
  static List phone = [];
  int i;
  TourOfferState({required this.i});

  static List<form> formlst = [];
  int _item = 1;
  @override
  Widget build(BuildContext context) {
    addList() {
      i = i + 1;
      formlst.add(new form(index: i));
      setState(() {});
    }

    deleteList() {
      formlst.removeLast();
      setState(() {});
    }

    save1() {
      name.clear();
      email.clear();
      phone.clear();
      formlst.forEach((widget) {
        name.add(widget.nameController.text);
        email.add(widget.emailController.text);
        phone.add(widget.phoneController.text);
      });
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                TourerBookingWidget(name: name, email: email, phone: phone)),
      );

      print(name);
      print(email);
      print(phone);
    }

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                Flexible(
                  child: ListView.builder(
                      itemCount: formlst.length,
                      itemBuilder: (BuildContext context, int index) {
                        return formlst[index];
                      }),
                ),
                Positioned(
                  bottom: 30,
                  left: 15,
                  child: i > 0
                      ? TextButton(
                          onPressed: () {
                            deleteList();
                            i = i - 1;
                          },
                          child: Text("Delete"))
                      : Container(),
                ),
                Positioned(
                  bottom: 30,
                  left: 150,
                  child: i > 0
                      ? TextButton(
                          onPressed: () {
                            save1();
                          },
                          child: Text("Save"))
                      : Container(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: i < 8
          ? FloatingActionButton(
              onPressed: () {
                addList();
              },
              child: Icon(Icons.add),
            )
          : Container(),
    );
  }
}

class form extends StatelessWidget {
  int index;
  form({
    Key? key,
    required this.index,
  }) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text("Person $index"),
          TextField(
            decoration: InputDecoration.collapsed(hintText: "Name"),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration.collapsed(hintText: "Email"),
            controller: emailController,
          ),
          TextField(
            decoration: InputDecoration.collapsed(hintText: "Phone"),
            controller: phoneController,
          ),
        ],
      ),
    );
  }
}
