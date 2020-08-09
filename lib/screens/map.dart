import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapActivity extends StatelessWidget {

  final CameraPosition initCameraPosition = CameraPosition(target: LatLng(44.500000, -89.500000),
    zoom: 12,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: GoogleMap(initialCameraPosition: initCameraPosition,
          mapType: MapType.terrain,
        ),
      ),
    );
  }
}
