import 'package:flutter/material.dart';
import '../controllers/image_controller.dart';
import '../controllers/location_controller.dart';
import '../widget/profile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ImageController _imageController = ImageController();
  final LocationController _locationController = LocationController();

  String? _imagePath;
  String? _address;

  void _updateProfile({String? imagePath, String? address}) {
    setState(() {
      if (imagePath != null) _imagePath = imagePath;
      if (address != null) _address = address;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlantApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfileWidget(imagePath: _imagePath, address: _address),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                String? path = await _imageController.getImagePath(true);
                if (path != null) {
                  _updateProfile(imagePath: path);
                }
              },
              child: const Text('Ambil Foto dari Kamera'),
            ),
            ElevatedButton(
              onPressed: () async {
                String? path = await _imageController.getImagePath(false);
                if (path != null) {
                  _updateProfile(imagePath: path);
                }
              },
              child: const Text('Pilih Foto dari Galeri'),
            ),
            ElevatedButton(
              onPressed: () async {
                String? addr = await _locationController.getAddress();
                if (addr != null) {
                  _updateProfile(address: addr);
                }
              },
              child: const Text('Ambil Alamat Saat Ini'),
            ),
          ],
        ),
      ),
    );
  }
}
