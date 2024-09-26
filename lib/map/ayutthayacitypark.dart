import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Ayutthayacitypark extends StatefulWidget {
  const Ayutthayacitypark({super.key});

  @override
  State<Ayutthayacitypark> createState() => _AyutthayacityparkState();
}

class _AyutthayacityparkState extends State<Ayutthayacitypark> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(14.3361417019813, 100.61130866928028);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(_center.toString()),
          position: _center,
          infoWindow: InfoWindow(
            title: 'อยุธยา ซิตี้ พาร์ค',
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
