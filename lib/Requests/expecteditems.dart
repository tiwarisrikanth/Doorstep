import 'package:doorstep/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_picker_timeline/flutter_date_picker_timeline.dart';

class Request extends StatefulWidget {
  final String title;
  const Request({Key? key, required this.title}) : super(key: key);

  @override
  _RequestState createState() => _RequestState();
}

enum SingingCharacter { Yes, No }

class _RequestState extends State<Request> {
  SingingCharacter? _character = SingingCharacter.No;
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  bool _value = false;
  int val = -1;
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
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: SingleChildScrollView(
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
                        'assets/formicons/quantity.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Quntity\ *',
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
                  labelText: 'Size',
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
                  labelText: 'Item Links',
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
                        'assets/formicons/orderid.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Order ID\ *',
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
                        'assets/formicons/trackingid.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'Tracking ID\ *',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Delivery servie provider\ *",
                      style: TextStyle(
                        fontFamily: 'MonM',
                        fontSize: 15,
                        color: primaryColor,
                      ),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Date of the delivery",
                      style: TextStyle(
                        fontFamily: 'MonM',
                        fontSize: 15,
                        color: primaryColor,
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              FlutterDatePickerTimeline(
                  startDate: DateTime(2022, 03, 04),
                  endDate: DateTime(2024, 12, 30),
                  initialSelectedDate: DateTime(2022, 03, 04),
                  onSelectedDateChange: (_date) {}),
              SizedBox(
                height: 15,
              ),
              TextField(
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  prefixIcon: ImageIcon(
                      const AssetImage(
                        'assets/formicons/otp.png',
                      ),
                      color: primaryColor,
                      size: 10),
                  labelText: 'OTP',
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
                // decoration: new InputDecoration(
                //     border: new OutlineInputBorder(
                //         borderSide: new BorderSide(color: primaryColor)),
                //     helperText: 'Enter 4 or 6 digit OTP',
                //     labelText: 'OTP',
                //     prefixIcon: ImageIcon(
                //         const AssetImage(
                //           'assets/formicons/otp.png',
                //         ),
                //         color: primaryColor,
                //         size: 10),
                //     suffixStyle: const TextStyle(color: Colors.green)),
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
                  labelText: 'Order Comments',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Need package opening video",
                      style: TextStyle(
                        fontFamily: 'MonM',
                        fontSize: 15,
                        color: primaryColor,
                      ),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Yes'),
                    leading: Radio<SingingCharacter>(
                      activeColor: primaryColor,
                      value: SingingCharacter.Yes,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('No'),
                    leading: Radio<SingingCharacter>(
                      activeColor: primaryColor,
                      value: SingingCharacter.No,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SafeArea(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor,
                      ),
                      height: 60,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ImageIcon(
                            AssetImage(
                              'assets/formicons/submit.png',
                            ),
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                fontFamily: 'MonM',
                                fontSize: 15,
                                color: white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
