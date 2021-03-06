import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'acesso_bio_camera.controller.dart';

class AcessoBioCameraScreen extends GetView<AcessoBioCameraController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: controller.openCamera,
          icon: Icon(Icons.camera, size: 18),
          label: Text('Abrir a camera Inteligente'),
        ),
      ],
    );
  }
}
