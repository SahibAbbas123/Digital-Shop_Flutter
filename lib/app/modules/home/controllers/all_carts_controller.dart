import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:digital_shop/app/data/models/cart_model.dart';

class AllCartsController extends GetxController {
  //TODO: Implement AllCartsController
  var isLoading = true.obs;
  var cartList = <CartModel>[].obs;
  final String allCartsUrl = "https://fakestoreapi.com/carts";
  @override
  void onInit() {
    fetchCarts();
    super.onInit();
  }

  void fetchCarts() async {
    try {
      isLoading.value = true;

      var response = await http.get(Uri.parse(allCartsUrl));
      print("All peoducts response: ${response.body}");
      if (response.statusCode == 200) {
        List<dynamic> carts = json.decode(response.body);

        for (var i = 0; i < carts.length; i++) {
          CartModel cartModelObject = CartModel.fromJson(carts[i]);
          cartList.add(cartModelObject);
        }
      } else {
        Get.snackbar("Error", "Failed to fetch carts");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      print("cartList length: ${cartList.length}");
      isLoading.value = false;
    }
  }
}
