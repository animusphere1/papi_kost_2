import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:papi_kost/core/permission/permission.dart';

class LocationUser extends ChangeNotifier {
  Position _position;
  Position get positionUser => _position;

  //Load Location User
  void loadLocation() async {
    //getPermition
    Permission.instance.gpsPermition();

    //getPosition
    _position = await Geolocator.getCurrentPosition();

    print(_position.latitude);
    notifyListeners();
  }
}
