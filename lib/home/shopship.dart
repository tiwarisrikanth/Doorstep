import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/repositories/shopshiprepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ShopShip extends StatefulWidget {
  final String title;
  final int id;
  const ShopShip({Key? key, required this.title, required this.id})
      : super(key: key);

  @override
  _ShopShipState createState() => _ShopShipState();
}

class _ShopShipState extends State<ShopShip>
    with SingleTickerProviderStateMixin {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        backgroundColor: primaryColor,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),

        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'MonM',
            fontSize: 15,
            color: white,
          ),
        ),
      ),
      backgroundColor: white,
      body: widget.id == 0
          ? _shopByYourself()
          : widget.id == 1
              ? _addPersonalShopper()
              : widget.id == 2
                  ? _addPackagePickUp()
                  : widget.id == 3
                      ? _addRequestTailoring()
                      : widget.id == 4
                          ? _addRequestMedicine()
                          : widget.id == 5
                              ? _addRequestAnything()
                              : const Center(
                                  child: Text(
                                    "Can't find any data regarding the request",
                                  ),
                                ),
    );
  }

  Widget _shopByYourself() {
    return FutureBuilder(
      future: getListOfPlatforms(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          );
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: snapshot.data!.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                color: white,
                child: Center(
                  child: Image.network(
                    snapshot.data![index]['platform'],
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _addPersonalShopper() {
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
                closeManually: true,
                children: [
                  SpeedDialChild(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: 'Add Request',
                    backgroundColor: primaryColor,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'monR',
                      fontSize: 12,
                    ),
                    onTap: () {
                      print('Share Tapped');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _addPackagePickUp() {
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
                closeManually: true,
                children: [
                  SpeedDialChild(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: 'Add Request',
                    backgroundColor: primaryColor,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'monR',
                      fontSize: 12,
                    ),
                    onTap: () {
                      print('Share Tapped');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _addRequestTailoring() {
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
                closeManually: true,
                children: [
                  SpeedDialChild(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: 'Add Request',
                    backgroundColor: primaryColor,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'monR',
                      fontSize: 12,
                    ),
                    onTap: () {
                      print('Share Tapped');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _addRequestMedicine() {
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
                closeManually: true,
                children: [
                  SpeedDialChild(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: 'Add Request',
                    backgroundColor: primaryColor,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'monR',
                      fontSize: 12,
                    ),
                    onTap: () {
                      print('Share Tapped');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _addRequestAnything() {
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
                closeManually: true,
                children: [
                  SpeedDialChild(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: 'Add Request',
                    backgroundColor: primaryColor,
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'monR',
                      fontSize: 12,
                    ),
                    onTap: () {
                      print('Share Tapped');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
