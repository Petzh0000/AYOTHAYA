import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Watchai extends StatefulWidget {
  const Watchai({super.key});

  @override
  State<Watchai> createState() => _MapMarkerPageState();
}

class _MapMarkerPageState extends State<Watchai> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(14.34317318000848, 100.54184816787291);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(_center.toString()),
          position: _center,
          infoWindow: InfoWindow(
              title: 'วัดไชยวัฒนาราม',
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

