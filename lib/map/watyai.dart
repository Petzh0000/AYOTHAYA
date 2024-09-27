import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Watyai extends StatefulWidget {
  const Watyai({super.key});

  @override
  State<Watyai> createState() => _WatyaiState();
}

class _WatyaiState extends State<Watyai> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(14.345714277773702, 100.59251516928043);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(_center.toString()),
          position: _center,
          infoWindow: InfoWindow(
            title: 'วัดใหญ่ชัยมงคล',
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
