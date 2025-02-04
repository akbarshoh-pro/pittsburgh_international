import 'package:flutter/cupertino.dart';

abstract class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // getLocation();
  }
}

// Future<void> getLocation() async {
//   Location location = Location();
//   PermissionStatus permission = await location.hasPermission();
//
//   if (permission == PermissionStatus.denied) {
//     permission = await location.requestPermission();
//   }
//
//   if (permission == PermissionStatus.granted) {
//     LocationData currentLocation = await location.getLocation();
//
//     HiveHelper.userLon = currentLocation.longitude!;
//     HiveHelper.userLat = currentLocation.latitude!;
//   }
//}