// import 'package:flutter/material.dart';
// import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
// import 'package:geolocator/geolocator.dart';
//
// class NavPage extends StatefulWidget {
//   const NavPage({super.key});
//
//   @override
//   State<NavPage> createState() => _NavState();
// }
//
// class _NavState extends State<NavPage> {
//   MapBoxNavigationViewController? _controller;
//   Position? _currentLocation;
//
//   // Controllers for user-inputted destination
//   TextEditingController _destinationLatitudeController = TextEditingController();
//   TextEditingController _destinationLongitudeController = TextEditingController();
//
//   late MapBoxOptions _navigationOption;
//   List<WayPoint> wayPoints = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation(); // Fetch the current location
//   }
//
//   Future<void> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//
//     // Check if location services are enabled
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return Future.error('Location services are disabled.');
//     }
//
//     // Request location permission
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.deniedForever) {
//         return Future.error('Location permissions are permanently denied.');
//       }
//     }
//
//     // If permissions are granted, fetch the location
//     Position position = await Geolocator.getCurrentPosition(
//       desiredAccuracy: LocationAccuracy.high,
//     );
//
//     setState(() {
//       _currentLocation = position;
//     });
//   }
//
//   void _startNavigation() async {
//     if (_controller != null &&
//         _destinationLatitudeController.text.isNotEmpty &&
//         _destinationLongitudeController.text.isNotEmpty) {
//       double destLat = double.parse(_destinationLatitudeController.text);
//       double destLng = double.parse(_destinationLongitudeController.text);
//
//       if (_currentLocation != null) {
//         // Add the current location and destination as waypoints
//         wayPoints = [
//           WayPoint(
//             name: "Start",
//             latitude: _currentLocation!.latitude,
//             longitude: _currentLocation!.longitude,
//           ),
//           WayPoint(
//             name: "Destination",
//             latitude: destLat,
//             longitude: destLng,
//           ),
//         ];
//
//         // Start navigation with waypoints
//         await _controller?.buildRoute(wayPoints: wayPoints);
//         await _controller?.startNavigation();
//       } else {
//         print('Current location is not available.');
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: _destinationLatitudeController,
//             decoration: InputDecoration(labelText: "Destination Latitude"),
//           ),
//           TextField(
//             controller: _destinationLongitudeController,
//             decoration: InputDecoration(labelText: "Destination Longitude"),
//           ),
//           ElevatedButton(
//             onPressed: _startNavigation,
//             child: Text('Start Navigation'),
//           ),
//           Expanded(
//             child: MapBoxNavigationView(
//               options: MapBoxOptions(
//                 initialLatitude: _currentLocation?.latitude,
//                 initialLongitude: _currentLocation?.longitude,
//                 mode: MapBoxNavigationMode.driving, // or walking, biking
//                 simulateRoute: false,
//               ),
//               onCreated: (MapBoxNavigationViewController controller) {
//                 _controller = controller;
//                 controller.initialize();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
