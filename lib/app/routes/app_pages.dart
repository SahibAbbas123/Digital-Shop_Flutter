import 'package:get/get.dart';

import '../modules/all_categories/bindings/all_categories_binding.dart';
import '../modules/all_categories/views/all_categories_view.dart';
import '../modules/all_jewelery/bindings/all_jewelery_binding.dart';
import '../modules/all_jewelery/views/all_jewelery_view.dart';
import '../modules/all_products/bindings/all_products_binding.dart';
import '../modules/all_products/views/all_carts_view.dart';
import '../modules/all_products/views/all_products_view.dart';
import '../modules/custom_drawer_implementation/bindings/custom_drawer_implementation_binding.dart';
import '../modules/custom_drawer_implementation/views/custom_drawer_implementation_view.dart';
import '../modules/home/bindings/all_carts_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/product_details/bindings/product_details_binding.dart';
import '../modules/product_details/views/product_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_DRAWER_IMPLEMENTATION,
      page: () => const CustomDrawerImplementationView(),
      binding: CustomDrawerImplementationBinding(),
    ),
    GetPage(
      name: _Paths.ALL_PRODUCTS,
      page: () => const AllProductsView(),
      binding: AllProductsBinding(),
    ),
    GetPage(
        name: _Paths.ALL_CARTS,
        page: () => const AllCartsView(),
        binding: AllCartsBinding()),
    GetPage(
      name: _Paths.ALL_CATEGORIES,
      page: () => const AllCategoriesView(),
      binding: AllCategoriesBinding(),
    ),
    GetPage(
      name: _Paths.ALL_JEWELERY,
      page: () => const AllJeweleryView(),
      binding: AllJeweleryBinding(),
    ),
    //  GetPage(
    //   name: '/category/electronics',
    //   page: () => ElectronicsPage(),
    // ),
    // GetPage(
    //   name: '/category/jewelery',
    //   page: () => JeweleryPage(),
    // ),
    // GetPage(
    //   name: '/category/men\'s clothing',
    //   page: () => MensClothingPage(),
    // ),
    // GetPage(
    //   name: '/category/women\'s clothing',
    //   page: () => WomensClothingPage(),
    // ),
  ];
}
