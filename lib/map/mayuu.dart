import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mayuu extends StatefulWidget {
  const Mayuu({super.key});

  @override
  State<Mayuu> createState() => _MayuuState();
}

class _MayuuState extends State<Mayuu> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(14.332789973880104, 100.60346456558403);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(_center.toString()),
          position: _center,
          infoWindow: InfoWindow(
            title: 'Mayuu Ayutthaya Hotel',
          ),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แสดงแผนที่'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
        mapType: MapType.normal,
        markers: _markers,
      ),
    );
  }
}
