import 'package:doorstep/auth/loginpage.dart';
import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/details/locker_details.dart';
import 'package:doorstep/details/maintabs.dart';
import 'package:doorstep/home/innerdetails.dart';
import 'package:doorstep/home/shopship.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //First 2 boxes
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => const ViewDetails(
                                  title: 'Locker Details',
                                )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: const Radius.circular(20),
                              bottomRight: const Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/locker.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: const Text(
                                  "View Locker Address",
                                  style: const TextStyle(
                                      fontFamily: 'MonS',
                                      fontSize: 15,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => const ViewDetails(
                                  title: 'Shop and Ship',
                                )));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: const Text(
                              "2",
                              style: TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/store.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: const Text(
                                  "Shope and Ship to locker",
                                  style: const TextStyle(
                                      fontFamily: 'MonS',
                                      fontSize: 15,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: const Radius.circular(20),
                              bottomRight: const Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: const Text(
                              "3",
                              style: TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/checked.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                              ),
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: const Text(
                                  "We Inspect Locker Items",
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
                      ],
                    ),
                  ),
                  back: Card(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "This section belongs to only inspectors at the locker site it doesn't concers you please continue with you shopping \n\n Thank you",
                              style: TextStyle(
                                  fontFamily: 'MonM',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
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
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: const Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "4",
                              style: const TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/review.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: const Text(
                                  "Review Locker Item",
                                  style: const TextStyle(
                                      fontFamily: 'MonS',
                                      fontSize: 15,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
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
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/package.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
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
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Card(
                    color: white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "6",
                              style: TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/jigsaw.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: const Text(
                                  "We Consolidate, pack and ship",
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
                      ],
                    ),
                  ),
                  back: Card(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "This section belongs to only inspectors at the locker site it doesn't concers you please continue with you shopping \n\n Thank you",
                              style: TextStyle(
                                  fontFamily: 'MonM',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
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
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 3,
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 30,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "7",
                              style: TextStyle(
                                  fontFamily: 'MonB',
                                  fontSize: 15,
                                  color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/shipment.png',
                                  width: MediaQuery.of(context).size.width / 4,
                                ),
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
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
