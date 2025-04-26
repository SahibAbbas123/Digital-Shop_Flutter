import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_jewelery_controller.dart';

class AllJeweleryView extends GetView<AllJeweleryController> {
  const AllJeweleryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllJeweleryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllJeweleryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
