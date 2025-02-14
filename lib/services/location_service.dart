import 'package:location/location.dart';

class LocationService {
  final Location _location = Location();

  Future<LocationData?> getCurrentLocation() async {
    // Fetch the current location of the device
    LocationData currentLocation = await _location.getLocation();
    return currentLocation;
  }

  // Function to listen to location changes
  Stream<LocationData> locationStream() {
    return _location.onLocationChanged;
  }
}
