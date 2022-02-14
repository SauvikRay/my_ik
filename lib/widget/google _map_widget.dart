import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({Key? key}) : super(key: key);

  @override
  _GoogleMapWidgetState createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  GoogleMapController? _controller;
  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      zoomGesturesEnabled: true,
      mapType: MapType.normal,
      initialCameraPosition: const CameraPosition(
        bearing: 30,
        tilt: 0,
        target: LatLng(22.8046914,89.5371078),
        zoom: 12.0,
      ),
      onMapCreated: (GoogleMapController controller){
        _controller = controller;
      },

    );
  }
}
