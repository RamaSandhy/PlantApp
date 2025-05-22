import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String? imagePath;
  final String? address;

  const ProfileWidget({super.key, this.imagePath, this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: imagePath != null
              ? FileImage(File(imagePath!))
              : const AssetImage('assets/profile_placeholder.png')
                  as ImageProvider,
        ),
}