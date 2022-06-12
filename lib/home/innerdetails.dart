import 'package:doorstep/Requests/expecteditems.dart';
import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/repositories/majo_repo.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'dart:math' as math;

class InnerDetails extends StatefulWidget {
  final String title;
  final int id;
  const InnerDetails({Key? key, required this.id, required this.title})
      : super(key: key);

  @override
  _InnerDetailsState createState() => _InnerDetailsState();
}

class _InnerDetailsState extends State<InnerDetails>
    with SingleTickerProviderStateMixin {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  Animation<double>? _animation;
  AnimationController? _animationController;
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
      body: Center(child: Text("API Data Here")),
      // body: widget.id == 1
      //     ? _lockerAddress()
      //     : widget.id == 2
      //         ? _addExpectedItems()
      //         : Container(),
      floatingActionButton: Visibility(
        // visible: widget.id == 2 ? true : false,
        visible: true,
        child: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          openCloseDial: isDialOpen,
          backgroundColor: primaryColor,
          overlayColor: Colors.black54,
          overlayOpacity: 0.5,
          curve: Curves.easeInCubic,
          spacing: 10,
          elevation: 19,
          spaceBetweenChildren: 10,
          closeManually: false,
          children: [
            SpeedDialChild(
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              label: 'Add Expected Items',
              backgroundColor: primaryColor,
              labelStyle: const TextStyle(
                color: Colors.black,
                fontFamily: 'monR',
                fontSize: 12,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Request(
                      title: "Add Expected Items",
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _lockerAddress() {
    return FutureBuilder(
        future: getLockerAddress(),
        builder: (context, AsyncSnapshot snapshot) {
          return Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      snapshot.data[0]['addressLine1'].toString(),
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
        });
  }

  Widget _addExpectedItems() {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Data from API for Added items will be shown here",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        const SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
              )),
        ),
      ],
    );
  }
}
