// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pulse/Services/database.dart';

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
                  position: LatLng(36.703270, 4.057516),
                  infoWindow:
                      InfoWindow(title: "Donate", snippet: "8h --  14h"),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('Make an appointment for tomorrow?'),
                          children: [
                            SimpleDialogOption(
                              onPressed: () {
                                Database(aid: DateTime.now().toString())
                                    .rendez("donate blood");
                                Database(aid: "appointments").getdata();

                                Navigator.of(context)
                                    .pop(); // Dismiss the "Make an appointment?" dialog
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text('Appointment made!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Dismiss the "Appointment made!" dialog
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );
                  },
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
