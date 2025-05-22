import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'map_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? alamatDipilih;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Pilih Alamat'),
                  IconButton(
                    icon: const Icon(Icons.map, color: Colors.black),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapPage(
                          ),
                        ),
                      );
                      // handle result here
                    },
                  ),
                ],
              ),

              alamatDipilih == null
                  ? const Text(' Tidak ada alamat yang dipilih')
                  : Text(alamatDipilih!)
            ],
          ),
        ),
      ),
    );
  }
}
