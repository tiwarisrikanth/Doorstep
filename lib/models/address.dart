// // To parse this JSON data, do
// //
// //     final locakerAddress = locakerAddressFromJson(jsonString);

// import 'dart:convert';

// LocakerAddress locakerAddressFromJson(String str) =>
//     LocakerAddress.fromJson(json.decode(str));

// String locakerAddressToJson(LocakerAddress data) => json.encode(data.toJson());

// class LocakerAddress {
//   LocakerAddress({
//     this.success,
//     this.message,
//     this.data,
//   });

//   bool? success;
//   String? message;
//   Data data;

//   factory LocakerAddress.fromJson(Map<String, dynamic> json) => LocakerAddress(
//         success: json["success"],
//         message: json["message"],
//         data: Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "success": success,
//         "message": message,
//         "data": data.toJson(),
//       };
// }

// class Data {
//   Data({
//     this.id,
//     this.addressLine1,
//     this.addressLine2,
//     this.addressLine3,
//     this.landmark,
//     this.city,
//     this.pincode,
//     this.email,
//     this.deliverycontactnumber,
//     this.state,
//   });

//   String? id;
//   String? addressLine1;
//   String? addressLine2;
//   String? addressLine3;
//   String? landmark;
//   String? city;
//   String? pincode;
//   String? email;
//   String? deliverycontactnumber;
//   String? state;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         addressLine1: json["addressLine1"],
//         addressLine2: json["addressLine2"],
//         addressLine3: json["addressLine3"],
//         landmark: json["landmark"],
//         city: json["city"],
//         pincode: json["pincode"],
//         email: json["email"],
//         deliverycontactnumber: json["deliverycontactnumber"],
//         state: json["state"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "addressLine1": addressLine1,
//         "addressLine2": addressLine2,
//         "addressLine3": addressLine3,
//         "landmark": landmark,
//         "city": city,
//         "pincode": pincode,
//         "email": email,
//         "deliverycontactnumber": deliverycontactnumber,
//         "state": state,
//       };
// }
