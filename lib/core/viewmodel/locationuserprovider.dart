import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class LocationUser extends ChangeNotifier {
  Position _position;
  Position get positionUser => _position;

  //Load Location User
  void loadLocation() async {
    _position = await getLocation();
    print(_position);
    notifyListeners();
  }

  Future<Position> getLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
  }
}
