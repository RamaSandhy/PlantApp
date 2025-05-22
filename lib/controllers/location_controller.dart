import 'package:geolocator/geolocator.dart';
import '../services/location_service.dart';

class LocationController {
  final LocationService _service = LocationService();

  Future<Position> getCurrentLocation() async {
    return await _service.getCurrentPosition();
  }

  Future<String> getAddress() async {
    final pos = await _service.getCurrentPosition();
    return await _service.getAddressFromLatLng(pos);
  }
}
