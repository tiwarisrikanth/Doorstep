import 'package:doorstep/constant/colorconstant.dart';
import 'package:flutter/material.dart';

class ReviewLocker extends StatefulWidget {
  final int mainVal;
  final String title;
  final int index;
  const ReviewLocker(
      {Key? key,
      required this.title,
      required this.index,
      required this.mainVal})
      : super(key: key);

  @override
  _ReviewLockerState createState() => _ReviewLockerState();
}

class _ReviewLockerState extends State<ReviewLocker> {
  @override
  Widget build(BuildContext context) {
    //MainVal == 0 means Locker Details
    //MainVal == 1 means Shipment Details
    //MainVal == 2 means Return Details
    return widget.mainVal == 0
        ? DefaultTabController(
            initialIndex: widget.index == 0
                ? 0
                : widget.index == 1
                    ? 1
                    : 0,
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: primaryColor,
                title: Text(
                  widget.title,
                  style:
                      TextStyle(fontFamily: 'MonM', fontSize: 15, color: white),
                ),
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  // automaticIndicatorColorAdjustment: true,
                  // isScrollable: true,
                  indicatorColor: white,
                  tabs: const [
                    Tab(
                      icon: ImageIcon(AssetImage(
                        'assets/images/review.png',
                      )),
                      text: "Review Locker",
                    ),
                    Tab(
                      icon: Icon(Icons.shopping_cart_outlined),
                      text: "Cart",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.delete_forever_outlined,
                      ),
                      text: "Discard Items",
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  Center(
                    child: Text("Review Locker"),
                  ),
                  Center(
                    child: Text("Cart"),
                  ),
                  Center(
                    child: Text("Discard Items"),
                  )
                ],
              ),
            ),
          )
        : widget.mainVal == 1
            ? DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: primaryColor,
                    title: Text(
                      widget.title,
                      style: TextStyle(
                          fontFamily: 'MonM', fontSize: 15, color: white),
                    ),
                    bottom: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      // automaticIndicatorColorAdjustment: true,
                      // isScrollable: true,
                      indicatorColor: white,
                      tabs: const [
                        Tab(
                          // icon: ImageIcon(AssetImage(
                          //   'assets/images/pendingorder.png',
                          // )),
                          icon: Icon(Icons.pending_actions),
                          text: "Pending Orders",
                        ),
                        Tab(
                          icon: Icon(Icons.history),
                          text: "Previous orders",
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      Center(
                        child: Text("Pending Orders"),
                      ),
                      Center(
                        child: Text("Order History"),
                      )
                    ],
                  ),
                ),
              )
            : DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: primaryColor,
                    title: Text(
                      widget.title,
                      style: TextStyle(
                          fontFamily: 'MonM', fontSize: 15, color: white),
                    ),
                    bottom: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3,
                      // automaticIndicatorColorAdjustment: true,
                      // isScrollable: true,
                      indicatorColor: white,
                      tabs: const [
                        Tab(
                          // icon: ImageIcon(AssetImage(
                          //   'assets/images/pendingorder.png',
                          // )),
                          icon: Icon(Icons.workspaces_outline),
                          text: "In Progress",
                        ),
                        Tab(
                          icon: Icon(Icons.home_work_outlined),
                          text: "Completed",
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(
                    children: [
                      Center(
                        child: Text("In Progress for Returning items"),
                      ),
                      Center(
                        child: Text("Completed Returns"),
                      )
                    ],
                  ),
                ),
              );
  }
}

/*

 */
