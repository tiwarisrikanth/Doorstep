import 'package:doorstep/constant/colorconstant.dart';
import 'package:flutter/material.dart';

class InnerDetails extends StatefulWidget {
  final String title;
  final int id;
  const InnerDetails({Key? key, required this.id, required this.title})
      : super(key: key);

  @override
  _InnerDetailsState createState() => _InnerDetailsState();
}

class _InnerDetailsState extends State<InnerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: primaryColor,
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'MonM',
            fontSize: 15,
            color: white,
          ),
        ),
      ),
      body: widget.id == 1
          ? _lockerAddress()
          : widget.id == 2
              ? _addExpectedItems()
              : Container(),
    );
  }

  Widget _lockerAddress() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "Your Locker",
              //   style: TextStyle(
              //     fontFamily: 'MonS',
              //     fontSize: 15,
              //     color: black,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     "To Temporarily store all your purchases in india before shipping. Shop from anywhere in india & ship to this locker address...",
              //     style: TextStyle(
              //       fontFamily: 'MonR',
              //       fontSize: 15,
              //       color: black,
              //     ),
              //     textAlign: TextAlign.justify,
              //   ),
              // ),

              Text(
                "Data From API will be show here for Locating Locker address...",
                style: TextStyle(
                  fontFamily: 'MonS',
                  fontSize: 15,
                  color: black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addExpectedItems() {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Data from API for Added items will be shown here",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                backgroundColor: primaryColor,
                onPressed: () {},
                label: Text("Add Items"),
                icon: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
