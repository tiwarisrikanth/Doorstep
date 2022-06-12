import 'package:doorstep/auth/loginpage.dart';
import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/details/locker_details.dart';
import 'package:doorstep/details/maintabs.dart';
import 'package:doorstep/home/innerdetails.dart';
import 'package:doorstep/home/shopship.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        // show the confirm dialog
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: const Text('Are you sure want to Exit the app?'),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        willLeave = true;
                        Navigator.of(context).pop();
                      },
                      child: const Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('No'),
                    )
                  ],
                ));
        return willLeave;
      },
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 4,
          backgroundColor: primaryColor,
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),

          title: Text(
            appName,
            style: TextStyle(fontFamily: 'MonM', fontSize: 15, color: white),
          ),
        ),
        body: _homePart(),
        drawer: SafeArea(child: _drawer()),
      ),
    );
  }

  Widget _homePart() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            "Shop from anywhere in india and get items at your DoorStep Worldwide",
            style: TextStyle(fontFamily: 'MonM', fontSize: 15, color: black),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Steps you and we follow..",
              style: TextStyle(
                  fontFamily: 'MonR', fontSize: 15, color: Colors.grey[500]),
              textAlign: TextAlign.left,
            ),
          ),
          _steps()
        ],
      ),
    );
  }

  Widget _steps() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
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
                        builder: (context) => const ViewDetails(
                          title: 'Locker Details',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber.withOpacity(0.2),
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
                            color: Colors.amber.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/locker.png',
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
                            "View Locker Address",
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
              height: 8,
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
                        builder: (context) => const ViewDetails(
                          title: 'Shop and Ship',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFD82148).withOpacity(0.2),
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
                            color: Color(0xFFD82148).withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/store.png',
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
                            "Shop and Ship to locker",
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
              height: 8,
            ),
            Expanded(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () => showCustomDialog(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.withOpacity(0.2),
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
                            color: Colors.green.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/checked.png',
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
                            "We Inspect Locker Items",
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
              height: 8,
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
                            builder: (context) => const ReviewLocker(
                                  title: 'Review Items',
                                  index: 0,
                                  mainVal: 0,
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade700.withOpacity(0.2),
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
                            color: Colors.blue.shade700.withOpacity(0.2),
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
                            "Review Items",
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
              height: 8,
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
                            builder: (context) => const ReviewLocker(
                                  title: 'Request Packing',
                                  index: 1,
                                  mainVal: 0,
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF151D3B).withOpacity(0.2),
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
                            color: Color(0xFF151D3B).withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/package.png',
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Text(
                            "Request Packing",
                            style: TextStyle(
                                fontFamily: 'MonS',
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () => showCustomDialog(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade700.withOpacity(0.2),
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
                            color: Colors.green.shade700.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset('assets/images/jigsaw.png',
                                  height: 50),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: const Text(
                            "We Consolidate, \n pack and ship",
                            style: TextStyle(
                                fontFamily: 'MonS',
                                fontSize: 15,
                                color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
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
                        builder: (context) => const ReviewLocker(
                          title: 'Shippment',
                          index: 0,
                          mainVal: 1,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade900.withOpacity(0.2),
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
                            color: Colors.red.shade900.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Image.asset(
                                'assets/images/shipment.png',
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Text(
                            "Track Shipment",
                            style: TextStyle(
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
              height: 8,
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawer() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Guest User",
                        style: TextStyle(
                          fontFamily: 'MonM',
                          fontSize: 15,
                          color: black,
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                //Menu 1st part
                ListTile(
                  leading: Icon(
                    Icons.home_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_clock,
                    color: black,
                  ),
                  title: Text(
                    "Your Locker",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReviewLocker(
                          index: 0,
                          mainVal: 0,
                          title: 'Your Locker',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.inventory_sharp,
                    color: black,
                  ),
                  title: Text(
                    "Expected Items",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InnerDetails(
                          id: 2,
                          title: "Expected Items",
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.replay,
                    color: black,
                  ),
                  title: Text(
                    "Returns",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReviewLocker(
                          index: 0,
                          mainVal: 2,
                          title: "Returns",
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_shipping_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Shipments",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReviewLocker(
                          index: 0,
                          mainVal: 1,
                          title: "Shipments",
                        ),
                      ),
                    );
                  },
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                //Menu Second part
                ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined,
                      color: black,
                    ),
                    title: Text(
                      "Shope by Yourself",
                      style: TextStyle(
                        color: black,
                        fontFamily: 'MonM',
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Shop By YourSelf',
                            id: 0,
                          ),
                        ),
                      );
                    }),
                ListTile(
                    leading: Icon(
                      Icons.delivery_dining_outlined,
                      color: black,
                    ),
                    title: Text(
                      "Request a Pickup",
                      style: TextStyle(
                        color: black,
                        fontFamily: 'MonM',
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Request Pick Up',
                            id: 1,
                          ),
                        ),
                      );
                    }),
                ListTile(
                    leading: Icon(
                      Icons.hail_outlined,
                      color: black,
                    ),
                    title: Text(
                      "Avail personal Shopper",
                      style: TextStyle(
                        color: black,
                        fontFamily: 'MonM',
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShopShip(
                            title: 'Avail Personal Shopper',
                            id: 2,
                          ),
                        ),
                      );
                    }),
                ListTile(
                    leading: Icon(
                      Icons.iron_outlined,
                      color: black,
                    ),
                    title: Text(
                      "Request Tailoring",
                      style: TextStyle(
                        color: black,
                        fontFamily: 'MonM',
                        fontSize: 15,
                      ),
                    ),
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
                    }),
                ListTile(
                    leading: Icon(
                      Icons.health_and_safety_outlined,
                      color: black,
                    ),
                    title: Text(
                      "Request Medicine Purchase",
                      style: TextStyle(
                        color: black,
                        fontFamily: 'MonM',
                        fontSize: 15,
                      ),
                    ),
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
                    }),
                ListTile(
                  leading: Icon(
                    Icons.call_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Request Anything",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
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
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                //Third Part
                ListTile(
                  leading: Icon(
                    Icons.receipt_long,
                    color: black,
                  ),
                  title: Text(
                    "Service Calculator",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_shipping_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Shipping Calculator",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                //Forth part
                ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Wallet",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    color: black,
                  ),
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.chat_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Chat",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                    color: black,
                  ),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: Colors.red[900],
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.red[900],
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showCustomDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          height: 240,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Lottie.asset('assets/animation/alert.json',
                    height: 60, width: 60),
              ),
              Expanded(
                  child: Text(
                'This step is looked after by the investigator at the locker location...\n\n Thank you',
                style: TextStyle(
                    color: black,
                    fontFamily: 'MonR',
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              ))
            ],
          ),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(40)),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(1, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}
/*
ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                // const DrawerHeader(
                //   decoration: BoxDecoration(
                //     color: Colors.blue,
                //   ),
                //   child: Text('Drawer Header'),
                // ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
 */
