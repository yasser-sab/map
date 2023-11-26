import "package:flutter/material.dart";

import "package:google_maps_flutter/google_maps_flutter.dart";

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _inits();
}

class _inits extends State<Map> {
  static final LatLng _kMapCenter =
      LatLng(33.589024652171624, -7.605248853203398);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: _kMapCenter,
        zoom: 11.0,
        tilt: 0,
        bearing: 0,
      ),
    );
  }
}
