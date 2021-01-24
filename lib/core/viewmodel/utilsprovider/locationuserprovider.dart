import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class LocationUser extends ChangeNotifier {
  Position _position;
  Position get positionUser => _position;

  //Load Location User
  void loadLocation() async {
    // _position = await getLocation();
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permantly denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }

    _position = await Geolocator.getCurrentPosition();

    print(_position);
    notifyListeners();
  }

  // Future<Position> getLocation() async {
  //   return await Geolocator.getCurrentPosition();
  // }
}
