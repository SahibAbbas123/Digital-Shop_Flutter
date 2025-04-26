import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/custom_drawer_implementation_controller.dart';

class CustomDrawerImplementationView
    extends GetView<CustomDrawerImplementationController> {
  const CustomDrawerImplementationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomDrawerImplementationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomDrawerImplementationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
