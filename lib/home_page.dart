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
}
