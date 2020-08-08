import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderConfirmation extends StatefulWidget {
  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  final CameraPosition initCameraPosition = CameraPosition(target: LatLng(44.500000, -89.500000),
    zoom: 12,);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          GoogleMap(initialCameraPosition: initCameraPosition,
          mapType: MapType.terrain,
          ),
        ],
      ),
    );
  }
}
