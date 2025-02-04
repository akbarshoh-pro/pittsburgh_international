import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import 'package:location/location.dart' as loc;
import 'package:pittsburgh_international/core/widgets/dialog/busy_station_dialog.dart';
import 'package:pittsburgh_international/core/widgets/dialog/empty_station_dialog.dart';

import '../../../core/constants/app_colors.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<StatefulWidget> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  static const LatLng center = LatLng(41.2995, 69.2401);
  static const double _markerOffsetFactor = 0.05;
  static const double _clusterManagerLongitudeOffset = 0.1;
  static const int _markersToAddToClusterManagerCount = 20;

  GoogleMapController? controller;
  loc.LocationData? _currentLocation;
  Map<ClusterManagerId, ClusterManager> clusterManagers = <ClusterManagerId, ClusterManager>{};
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  MarkerId? selectedMarker;
  int _clusterManagerIdCounter = 1;
  int _markerIdCounter = 1;
  Cluster? lastCluster;
  BitmapDescriptor? _customMarker;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    _addClusterManager();
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (mapController) {
              setState(() {
                controller = mapController;
              });
            },
            initialCameraPosition: CameraPosition(
              target: _currentLocation != null
                  ? LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!)
                  : center,
              zoom: 11.0,
            ),
            myLocationEnabled: true,
            markers: Set<Marker>.of(markers.values),
            clusterManagers: Set<ClusterManager>.of(clusterManagers.values),
          ),
          Positioned(
            bottom: 120,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.purple,
                  shape: BoxShape.circle
                ),
                child: SvgPicture.asset(
                  'assets/svg/ic_fl.svg'
                ),
              )
          )
        ],
      ),
    );
  }

  Future<void> _getCurrentLocation() async {
    ph.PermissionStatus permissionStatus = await ph.Permission.location.status;

    if (permissionStatus.isGranted) {
      loc.Location location = loc.Location();
      _currentLocation = await location.getLocation();
      setState(() {});
    } else {
      ph.PermissionStatus newStatus = await ph.Permission.location.request();
      if (newStatus.isGranted) {
        loc.Location location = loc.Location();
        _currentLocation = await location.getLocation();
        setState(() {});
      } else {
        print("Location permission denied");
      }
    }
  }

  void _addClusterManager() {
    if (clusterManagers.length == 1) {
      return;
    }

    final String clusterManagerIdVal =
        'cluster_manager_id_$_clusterManagerIdCounter';
    _clusterManagerIdCounter++;
    final ClusterManagerId clusterManagerId = ClusterManagerId(clusterManagerIdVal);

    final ClusterManager clusterManager = ClusterManager(
      clusterManagerId: clusterManagerId,
      onClusterTap: (Cluster cluster) => setState(() {
        lastCluster = cluster;
      }),
    );

    setState(() {
      clusterManagers[clusterManagerId] = clusterManager;
    });
    _addMarkersToCluster(clusterManager);
  }

  Future<void> _loadCustomMarker() async {
    final BitmapDescriptor customIcon = await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/png/ic_station.png',
    );
    setState(() {
      _customMarker = customIcon;
    });
  }

  Future<void> _addMarkersToCluster(ClusterManager clusterManager) async {
    await _loadCustomMarker();
    for (int i = 0; i < _markersToAddToClusterManagerCount; i++) {
      final String markerIdVal =
          '${clusterManager.clusterManagerId.value}_marker_id_$_markerIdCounter';
      _markerIdCounter++;
      final MarkerId markerId = MarkerId(markerIdVal);

      final int clusterManagerIndex =
      clusterManagers.values.toList().indexOf(clusterManager);

      final double clusterManagerLongitudeOffset =
          clusterManagerIndex * _clusterManagerLongitudeOffset;

      final Marker marker = Marker(
        clusterManagerId: clusterManager.clusterManagerId,
        markerId: markerId,
        icon: _customMarker!,
        position: LatLng(
          center.latitude + _getRandomOffset(),
          center.longitude + _getRandomOffset() + clusterManagerLongitudeOffset,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => i % 2 == 0 ? const BusyStationDialog() : const EmptyStationDialog()
          );
        },
      );
      markers[markerId] = marker;
    }
    setState(() {});
  }

  double _getRandomOffset() {
    return (Random().nextDouble() - 0.5) * _markerOffsetFactor;
  }
}
