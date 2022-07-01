import 'package:flutter/material.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class GoogleMapsScreen extends StatefulWidget {
   static const path = '/GoogleMapsScreen';
  GoogleMapsScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
      ),
      body: GoogleMapsWidget(
        onMapCreated: (GoogleMapController controller) {
          print('Map created');
        }, apiKey: 'AIzaSyDz8YOpxhShmPVupWYhnhc2SJ5IPLkkEmA', 
        destinationLatLng: LatLng (40.48400083, -3.369978368282318), 
        sourceLatLng: LatLng(40.48017307700204, -3.3618026599287987),
      ),
    );
  }
}