import 'package:doorstep/constant/colorconstant.dart';
import 'package:flutter/material.dart';

class ShopShipInnerDetail extends StatefulWidget {
  final int requestID;
  final String title;
  const ShopShipInnerDetail(
      {Key? key, required this.requestID, required this.title})
      : super(key: key);

  @override
  State<ShopShipInnerDetail> createState() => _ShopShipInnerDetailState();
}

class _ShopShipInnerDetailState extends State<ShopShipInnerDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
      body: widget.requestID == 1
          ? personalShopper()
          : widget.requestID == 2
              ? requestPackagePickUp()
              : widget.requestID == 3
                  ? requestTailoring()
                  : widget.requestID == 4
                      ? requestMedicine()
                      : widget.requestID == 5
                          ? requestAnything()
                          : Container(
                              color: primaryColor,
                              child: Text(
                                "Fill Shopping List",
                                style: TextStyle(
                                  fontFamily: 'MonS',
                                  fontSize: 15,
                                  color: white,
                                ),
                              ),
                            ),
    );
  }

  Widget personalShopper() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            TextField(
              cursorColor: primaryColor,
              decoration: InputDecoration(
                prefixIcon: ImageIcon(
                    const AssetImage(
                      'assets/formicons/user.png',
                    ),
                    color: primaryColor,
                    size: 10),
                labelText: 'Name\ *',
                labelStyle: const TextStyle(
                    fontFamily: 'MonM',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              cursorColor: primaryColor,
              decoration: InputDecoration(
                prefixIcon: ImageIcon(
                    const AssetImage(
                      'assets/formicons/phone.png',
                    ),
                    color: primaryColor,
                    size: 10),
                labelText: 'Contact Number\ *',
                labelStyle: TextStyle(
                    fontFamily: 'MonM',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fill Shopping List",
                  style: TextStyle(
                    fontFamily: 'MonS',
                    fontSize: 15,
                    color: black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: bottomSheetForAvailShopper(),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheetForAvailShopper() {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      height: MediaQuery.of(context).size.height / 1.3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 14,
              ),
              Text(
                "Add Item",
                style: TextStyle(
                  fontFamily: 'MonS',
                  fontSize: 15,
                  color: black,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/item.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Item Name\ *',
                  labelStyle: const TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/vendor.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Contact Name\ *',
                  labelStyle: TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/size.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Size\ *',
                  labelStyle: TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/quantity.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Quantity\ *',
                  labelStyle: TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/estimatedmoney.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Estimated Price\ *',
                  labelStyle: TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/comment.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Comment',
                  labelStyle: TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/link.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Link',
                  labelStyle: TextStyle(
                      fontFamily: 'MonM',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  ImageIcon(AssetImage('assets/formicons/gallery.png')),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "Photos",
                    style: TextStyle(
                      fontFamily: 'MonS',
                      fontSize: 15,
                      color: black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: primaryColor.withOpacity(0.4),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SafeArea(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Cancle",
                            style: TextStyle(
                              fontFamily: 'MonS',
                              fontSize: 15,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 60,
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontFamily: 'MonS',
                              fontSize: 15,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget requestPackagePickUp() {
    return Center(child: Text("Package"));
  }

  Widget requestTailoring() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Service Type\ *',
            style: TextStyle(
              fontFamily: 'MonM',
              fontSize: 15,
              color: black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            enabled: false,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              prefixIcon: ImageIcon(
                  const AssetImage(
                    'assets/formicons/service.png',
                  ),
                  color: primaryColor,
                  size: 10),
              labelText: "Tailoring",
              labelStyle: TextStyle(
                  fontFamily: 'MonM',
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            cursorColor: primaryColor,
            decoration: InputDecoration(
              prefixIcon: ImageIcon(
                  const AssetImage(
                    'assets/formicons/comment.png',
                  ),
                  color: primaryColor,
                  size: 10),
              labelText: 'Message\ *',
              labelStyle: TextStyle(
                  fontFamily: 'MonM',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Spacer(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontFamily: 'MonS',
                      fontSize: 15,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget requestMedicine() {
    return Center(child: Text("Medicine"));
  }

  Widget requestAnything() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Service Type\ *',
            style: TextStyle(
              fontFamily: 'MonM',
              fontSize: 15,
              color: black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            enabled: false,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              prefixIcon: ImageIcon(
                  const AssetImage(
                    'assets/formicons/random.png',
                  ),
                  color: primaryColor,
                  size: 10),
              labelText: "Just Anything",
              labelStyle: TextStyle(
                  fontFamily: 'MonM',
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            cursorColor: primaryColor,
            decoration: InputDecoration(
              prefixIcon: ImageIcon(
                  const AssetImage(
                    'assets/formicons/comment.png',
                  ),
                  color: primaryColor,
                  size: 10),
              labelText: 'Message\ *',
              labelStyle: TextStyle(
                  fontFamily: 'MonM',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          Spacer(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 60,
                child: Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontFamily: 'MonS',
                      fontSize: 15,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
