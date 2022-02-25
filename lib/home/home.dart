import 'package:doorstep/constant/colorconstant.dart';
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
          backgroundColor: green,
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
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          "Shop from anywhere in india and get items at your DoorStep Worldwide",
          style: TextStyle(fontFamily: 'MonM', fontSize: 15, color: black),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Widget _drawer() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
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
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      SizedBox(
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
                Divider(
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
                ),
                Divider(
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
                ),
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
                ),
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
                ),
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
                ),
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
                ),
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
                ),
                Divider(
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
                Divider(
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
                    color: black,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      color: black,
                      fontFamily: 'MonM',
                      fontSize: 15,
                    ),
                  ),
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
