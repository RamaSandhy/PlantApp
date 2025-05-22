import 'package:geolocator/geolocator.dart';
import '../services/location_service.dart';

class LocationController {
  final LocationService _service = LocationService();

  Future<Position> getCurrentLocation() async {
    return await _service.getCurrentPosition();
  }
}