import 'package:doorstep/constant/colorconstant.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

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
                  child: FloatingActionBubble(
                    // Menu items
                    items: <Bubble>[
                      // Floating action menu item
                      Bubble(
                        title: "Settings",
                        iconColor: Colors.white,
                        bubbleColor: Colors.blue,
                        icon: Icons.settings,
                        titleStyle:
                            TextStyle(fontSize: 16, color: Colors.white),
                        onPress: () {
                          _animationController!.reverse();
                        },
                      ),
                      // Floating action menu item
                      Bubble(
                        title: "Profile",
                        iconColor: Colors.white,
                        bubbleColor: Colors.blue,
                        icon: Icons.people,
                        titleStyle:
                            TextStyle(fontSize: 16, color: Colors.white),
                        onPress: () {
                          _animationController!.reverse();
                        },
                      ),
                      //Floating action menu item
                      Bubble(
                        title: "Home",
                        iconColor: Colors.white,
                        bubbleColor: Colors.blue,
                        icon: Icons.home,
                        titleStyle:
                            TextStyle(fontSize: 16, color: Colors.white),
                        onPress: () {
                          // Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => Homepage()));
                          _animationController!.reverse();
                        },
                      ),
                    ],

                    // animation controller
                    animation: _animation!,

                    // On pressed change animation state
                    onPress: () => _animationController!.isCompleted
                        ? _animationController!.reverse()
                        : _animationController!.forward(),

                    // Floating Action button Icon color
                    iconColor: Colors.blue,

                    // Flaoting Action button Icon
                    iconData: Icons.ac_unit,
                    backGroundColor: Colors.white,
                  ))),
        ),
      ],
    );
  }
}
