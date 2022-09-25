import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // google map controller
  final Completer<GoogleMapController> _controller = Completer();

  // initial position
  static const CameraPosition initialPosition = CameraPosition(target: LatLng(37.15478, -122.78945), zoom: 14.0);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amer Internship test"),
      ),
        body:
        GoogleMap(initialCameraPosition: initialPosition, mapType: MapType.normal, onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },),
        floatingActionButton: FloatingActionButton.extended(onPressed: (){}, label: Text("Teleport me to somewhere random")),


        // SizedBox(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       ElevatedButton(onPressed: (){}, child: const Text("Teleport me to somewhere random")),
        //       ElevatedButton(onPressed: (){}, child: const Text("Bring me back home")),
        //     ],
        //   ),
        // ),

    );
  }

  Future<void> BringMeBackHome() async{
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(initialPosition));
  }

}

