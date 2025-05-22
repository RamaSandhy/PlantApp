import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationService {
  Future<Position> getCurrentPosition() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      throw 'Location service tidak aktif';
    }

        LocationPermission perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
      if (perm == LocationPermission.denied) {
        throw 'Izin lokasi ditolak';
      }
    }

    return await Geolocator.getCurrentPosition();
  }

    Future<String> getAddressFromLatLng(Position pos) async {
    final placemarks = await placemarkFromCoordinates(pos.latitude, pos.longitude);
    final p = placemarks.first;
    return '${p.name}, ${p.locality}, ${p.country}';
  }
} 