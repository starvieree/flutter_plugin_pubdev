import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_pubdev/widget/filter_carousel.dart';
import 'package:flutter_plugin_pubdev/widget/takepicture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();

  // Kamera belakang
  // final firstCamera = cameras.first;

  // Kamera depan
  final secondCamera = cameras.last;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakepictureScreen(
        camera: secondCamera
      ),
    )
  );

  // runApp(
  //   const MaterialApp(
  //     home: PhotoFilterCarousel(),
  //     debugShowCheckedModeBanner: false,
  //   ),
  // );

}
