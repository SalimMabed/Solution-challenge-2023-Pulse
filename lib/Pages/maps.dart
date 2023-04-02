import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Place> {
  String maptheme = '';
  var myMarkers = HashSet<Marker>(); //collection
  final Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    DefaultAssetBundle.of(context)
        .loadString('assets/maps_style.json')
        .then((value) {
      maptheme = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(36.707317, 4.043247), zoom: 14),
          onMapCreated: (GoogleMapController googleMapController) async {
            googleMapController.setMapStyle(maptheme);
            setState(() {
              myMarkers.add(
                Marker(
                  markerId: MarkerId('1'),
                  position: LatLng(36.707317, 4.043247),
                ),
              );
            });
          },
          markers: myMarkers,
        ),
      ],
    ));
  }
}
