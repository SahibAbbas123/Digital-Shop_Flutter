import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/all_carts_controller.dart';

class AllCartsView extends GetView<AllCartsController> {
  const AllCartsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AllCartsView'), centerTitle: true),
      body: Obx(() {
        /// initially a loading will show
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        /// After got the List from Api, then it will show
        return ListView.builder(
          itemCount: controller.cartList.length,
          itemBuilder: (context, index) {
            final cart = controller.cartList[index];
            return Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Cart R: ${cart.id}'),
                subtitle: Text('User ID: ${cart.userId}'),
              ),
            );
          },
        );
      }),
    );
  }
}
