import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:pittsburgh_international/core/widgets/dialog/busy_station_dialog.dart';
import 'package:pittsburgh_international/core/widgets/dialog/empty_station_dialog.dart';

import '../../../core/constants/app_colors.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final Location _location = Location();
  LatLng _currentPosition = const LatLng(41.2995, 69.2401);
  Set<Marker> _markers = {};
  BitmapDescriptor? _customMarker;


  @override
  void initState() {
    super.initState();
    _loadCustomMarker();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(target: _currentPosition, zoom: 12),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
              _getCurrentLocation();
            },
            markers: _markers,
            myLocationEnabled: true,
          ),
          Positioned(
            bottom: 130,
              right: 20,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.purple
                ),
                padding: const EdgeInsets.all(8),
                child: const Icon(
                  Icons.filter_list,
                  color: AppColors.white,
                ),
              )
          )
        ],
      ),
    );
  }

  Future<void> _loadCustomMarker() async {
    final BitmapDescriptor customIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(28, 28)),
      'assets/png/ic_chrg.png',
    );
    setState(() {
      _customMarker = customIcon;
      _generateFixedMarkers();
    });
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _location.requestService();
      if (!serviceEnabled) return;
    }

    permissionGranted = await _location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await _location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }

    LocationData locationData = await _location.getLocation();
    setState(() {
      _currentPosition = LatLng(locationData.latitude!, locationData.longitude!);
    });

    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: _currentPosition, zoom: 14),
      ),
    );
  }

  void _generateFixedMarkers() {
    if (_customMarker == null) return;

    Set<Marker> markers = {};

    List<LatLng> fixedPoints = const [
      LatLng(41.2995, 69.2401),
      LatLng(41.3050, 69.2050),
      LatLng(41.3100, 69.2500),
      LatLng(41.3105, 69.2600),
      LatLng(41.3150, 69.2200),
      LatLng(41.3200, 69.2700),
      LatLng(41.3250, 69.2350),
      LatLng(41.3300, 69.2800),
      LatLng(41.3350, 69.2300),
      LatLng(41.3400, 69.2100),
      LatLng(41.3450, 69.2550),
      LatLng(41.3500, 69.2650),
      LatLng(41.3550, 69.2800),
      LatLng(41.3600, 69.2950),
      LatLng(41.3650, 69.2250),
    ];

    for (int i = 0; i < fixedPoints.length; i++) {
      LatLng point = fixedPoints[i];
      markers.add(
        Marker(
            markerId: MarkerId('marker_$i'),
            position: point,
            infoWindow: InfoWindow(title: 'Метка $i'),
            icon: _customMarker!,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => i % 2 == 0 ? const BusyStationDialog() : const EmptyStationDialog()
              );
            }
        ),
      );
    }

    setState(() {
      _markers = markers;
    });
  }

}
