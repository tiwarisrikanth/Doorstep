import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/details/maintabs.dart';
import 'package:doorstep/home/innerdetails.dart';
import 'package:doorstep/home/shopship.dart';
import 'package:flutter/material.dart';

class ViewDetails extends StatefulWidget {
  final String title;
  const ViewDetails({Key? key, required this.title}) : super(key: key);

  @override
  _ViewDetailsState createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  bool address = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: primaryColor,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),

        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'MonM', fontSize: 15, color: white),
        ),
      ),
      backgroundColor: white,
      body: Column(
        children: [
          widget.title == 'Locker Details'
              ? _LockerDetails()
              : widget.title == 'Shop and Ship'
                  ? _shipandShop()
                  : Container()
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _LockerDetails() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.7,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InnerDetails(
                            title: 'Locker Address',
                            id: 1,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.greenAccent.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/address.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Locker Address",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => const InnerDetails(
                            title: 'Add Expected Items',
                            id: 2,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orangeAccent.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.orangeAccent.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/expected.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Add Expected Items",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //Here
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => ReviewLocker(
                            title: 'Review Locker Items',
                            mainVal: 0,
                            index: 0,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/review.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Review Locker Items",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => ReviewLocker(
                            title: 'Box My Items',
                            mainVal: 0,
                            index: 1,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: primaryColor.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/additems.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Box my Items",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => InnerDetails(
              // title: 'Locker Address',
              // id: 1,
              //               ),
              //             ),
              //           );
              //         },
              //         child: Card(
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(20),
              //           ),
              //           elevation: 3,
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //             ),
              //             height: MediaQuery.of(context).size.height / 4,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Center(
              //                   child: Image.asset(
              //                     'assets/images/address.png',
              //                     width: MediaQuery.of(context).size.width / 4,
              //                   ),
              //                 ),
              //                 // ignore: sized_box_for_whitespace
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: const Text(
              //                     "Locker Address",
              //                     style: TextStyle(
              //                         fontFamily: 'MonS',
              //                         fontSize: 15,
              //                         color: Colors.black),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Expanded(
              //       child: InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => InnerDetails(
              // title: 'Add Expected Items',
              // id: 2,
              //               ),
              //             ),
              //           );
              //           // Navigator.push(
              //           //     context,
              //           //     new MaterialPageRoute(
              //           //         builder: (context) => ViewDetails(
              //           //               title: 'Track Shipment',
              //           //             )));
              //         },
              //         child: Card(
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(20),
              //           ),
              //           elevation: 3,
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //             ),
              //             height: MediaQuery.of(context).size.height / 4,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Center(
              //                   child: Image.asset(
              //                     'assets/images/expected.png',
              //                     width: MediaQuery.of(context).size.width / 4,
              //                   ),
              //                 ),
              //                 // ignore: sized_box_for_whitespace
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: const Text(
              //                     "Add Expected Items",
              //                     style: TextStyle(
              //                         fontFamily: 'MonS',
              //                         fontSize: 15,
              //                         color: Colors.black),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: InkWell(
              //         onTap: () {
              // Navigator.push(
              //   context,
              //   new MaterialPageRoute(
              //     builder: (context) => ReviewLocker(
              //       title: 'Review Locker Items',
              //       mainVal: 0,
              //       index: 0,
              //     ),
              //   ),
              // );
              //         },
              //         child: Card(
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(20),
              //           ),
              //           elevation: 3,
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //             ),
              //             height: MediaQuery.of(context).size.height / 4,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Center(
              //                   child: Image.asset(
              //                     'assets/images/review.png',
              //                     width: MediaQuery.of(context).size.width / 4,
              //                   ),
              //                 ),
              //                 // ignore: sized_box_for_whitespace
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: const Text(
              //                     "Review Locker Items",
              //                     style: TextStyle(
              //                         fontFamily: 'MonS',
              //                         fontSize: 15,
              //                         color: Colors.black),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     Expanded(
              //       child: InkWell(
              //         onTap: () {
              // Navigator.push(
              //   context,
              //   new MaterialPageRoute(
              //     builder: (context) => ReviewLocker(
              //       title: 'Box My Items',
              //       mainVal: 0,
              //       index: 1,
              //     ),
              //   ),
              // );
              //         },
              //         child: Card(
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(20),
              //           ),
              //           elevation: 3,
              //           child: Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(20),
              //             ),
              //             height: MediaQuery.of(context).size.height / 4,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Center(
              //                   child: Image.asset(
              //                     'assets/images/additems.png',
              //                     width: MediaQuery.of(context).size.width / 4,
              //                   ),
              //                 ),
              //                 // ignore: sized_box_for_whitespace
              //                 Container(
              //                   width: MediaQuery.of(context).size.width / 3,
              //                   child: const Text(
              //                     "Box my Items",
              //                     style: TextStyle(
              //                         fontFamily: 'MonS',
              //                         fontSize: 15,
              //                         color: Colors.black),
              //                     textAlign: TextAlign.center,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }

  //Ship and Shop

  // ignore: non_constant_identifier_names
  Widget _shipandShop() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.2,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Shop By Yourself',
                            id: 0,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.greenAccent.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/shopbyyourself.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Shop By Yourself",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Avail Personal Shopper',
                            id: 1,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orangeAccent.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.orangeAccent.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/availpersonal.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Avail Personal Shopper",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //Here
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Request Package Pick Up',
                            id: 2,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/requestpickup.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Request Package Pickup",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Request Tailoring',
                            id: 3,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryColor.withOpacity(0.2),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: primaryColor.withOpacity(0.2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                    'assets/images/requestsewing.png',
                                    height: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Request Tailoring",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Request Medicine',
                            id: 4,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red.shade900.withOpacity(0.3),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red.shade900.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                    'assets/images/requestmedicine.png',
                                    height: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Request Medicine",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Request Anything',
                            id: 5,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade900.withOpacity(0.3),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.green.shade900.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Image.asset(
                                    'assets/images/requestrandom.png',
                                    height: 50),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              "Request Anything",
                              style: const TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // const SizedBox(
    //   height: 10,
    // ),
    // Row(
    //   children: [
    //     Expanded(
    //       child: InkWell(
    //         onTap: () {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ShopShip(
    //       title: 'Shop By Yourself',
    //       id: 0,
    //     ),
    //   ),
    // );
    //         },
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           elevation: 3,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             height: MediaQuery.of(context).size.height / 4,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Center(
    //                   child: Image.asset(
    //                     'assets/images/shopbyyourself.png',
    //                     width: MediaQuery.of(context).size.width / 4,
    //                   ),
    //                 ),
    //                 // ignore: sized_box_for_whitespace
    //                 Container(
    //                   width: MediaQuery.of(context).size.width / 3,
    //                   child: const Text(
    //                     "Shop By Yourself",
    //                     style: TextStyle(
    //                         fontFamily: 'MonS',
    //                         fontSize: 15,
    //                         color: Colors.black),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     const SizedBox(
    //       width: 20,
    //     ),
    //     Expanded(
    //       child: InkWell(
    //         onTap: () {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => ShopShip(
    //       title: 'Avail Personal Shopper',
    //       id: 1,
    //     ),
    //   ),
    // );
    //         },
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           elevation: 3,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             height: MediaQuery.of(context).size.height / 4,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Center(
    //                   child: Image.asset(
    //                     'assets/images/availpersonal.png',
    //                     width: MediaQuery.of(context).size.width / 4,
    //                   ),
    //                 ),
    //                 // ignore: sized_box_for_whitespace
    //                 Container(
    //                   width: MediaQuery.of(context).size.width / 3,
    //                   child: const Text(
    //                     "Avail Personal Shopper",
    //                     style: TextStyle(
    //                         fontFamily: 'MonS',
    //                         fontSize: 15,
    //                         color: Colors.black),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    // const SizedBox(
    //   height: 10,
    // ),
    // Row(
    //   children: [
    //     Expanded(
    //       child: InkWell(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => ShopShip(
    //                 title: 'Request Package Pick Up',
    //                 id: 2,
    //               ),
    //             ),
    //           );
    //         },
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           elevation: 3,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             height: MediaQuery.of(context).size.height / 4,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    // Center(
    //   child: Image.asset(
    //     'assets/images/requestpickup.png',
    //     width: MediaQuery.of(context).size.width / 4,
    //   ),
    // ),
    //                 // ignore: sized_box_for_whitespace
    //                 Container(
    //                   width: MediaQuery.of(context).size.width / 3,
    //                   child: const Text(
    //                     "Request Package Pickup",
    //                     style: TextStyle(
    //                         fontFamily: 'MonS',
    //                         fontSize: 15,
    //                         color: Colors.black),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     const SizedBox(
    //       width: 20,
    //     ),
    //     Expanded(
    //       child: InkWell(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => ShopShip(
    //                 title: 'Request Tailoring',
    //                 id: 3,
    //               ),
    //             ),
    //           );
    //         },
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           elevation: 3,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             height: MediaQuery.of(context).size.height / 4,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    // Center(
    //   child: Image.asset(
    //     'assets/images/requestsewing.png',
    //     width: MediaQuery.of(context).size.width / 4,
    //   ),
    // ),
    //                 // ignore: sized_box_for_whitespace
    //                 Container(
    //                   width: MediaQuery.of(context).size.width / 3,
    //                   child: const Text(
    //                     "Request Tailoring",
    //                     style: TextStyle(
    //                         fontFamily: 'MonS',
    //                         fontSize: 15,
    //                         color: Colors.black),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    // const SizedBox(
    //   height: 10,
    // ),
    // Row(
    //   children: [
    //     Expanded(
    //       child: InkWell(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => ShopShip(
    //                 title: 'Request Medicine',
    //                 id: 4,
    //               ),
    //             ),
    //           );
    //         },
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           elevation: 3,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             height: MediaQuery.of(context).size.height / 4,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    // Center(
    //   child: Image.asset(
    //     'assets/images/requestmedicine.png',
    //     width: MediaQuery.of(context).size.width / 4,
    //   ),
    // ),
    //                 // ignore: sized_box_for_whitespace
    //                 Container(
    //                   width: MediaQuery.of(context).size.width / 3,
    //                   child: const Text(
    //                     "Request Medicines",
    //                     style: TextStyle(
    //                         fontFamily: 'MonS',
    //                         fontSize: 15,
    //                         color: Colors.black),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     const SizedBox(
    //       width: 20,
    //     ),
    //     Expanded(
    //       child: InkWell(
    //         onTap: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //               builder: (context) => ShopShip(
    //                 title: 'Request Anything',
    //                 id: 5,
    //               ),
    //             ),
    //           );
    //         },
    //         child: Card(
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(20),
    //           ),
    //           elevation: 3,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             height: MediaQuery.of(context).size.height / 4,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 Center(
    //                   child: Image.asset(
    //                     'assets/images/requestrandom.png',
    //                     width: MediaQuery.of(context).size.width / 4,
    //                   ),
    //                 ),
    //                 // ignore: sized_box_for_whitespace
    //                 Container(
    //                   width: MediaQuery.of(context).size.width / 3,
    //                   child: const Text(
    //                     "Request Anything",
    //                     style: TextStyle(
    //                         fontFamily: 'MonS',
    //                         fontSize: 15,
    //                         color: Colors.black),
    //                     textAlign: TextAlign.center,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // )
  }
}


//Home Page API code

// Container(
          //   height: 200,
          //   child: FutureBuilder(
          //     builder: (context, AsyncSnapshot<List> snapshot) {
          //       return ListView.builder(
          //         itemBuilder: (context, index) {
          //           return Row(
          //             children: [
          //               SizedBox(
          //                 width: 20,
          //               ),
          //               Container(
          //                 height: 70,
          //                 width: 80,
          //                 child: Image.network(
          //                   snapshot.data![index]['image'],
          //                 ),
          //               ),
          //               SizedBox(
          //                 width: 20,
          //               ),
          //               Text(
          //                 snapshot.data![index]['address'],
          //               )
          //             ],
          //           );
          //         },
          //         itemCount: snapshot.data!.length,
          //       );
          //     },
          //     future: getListOfAddress(),
          //   ),
          // )