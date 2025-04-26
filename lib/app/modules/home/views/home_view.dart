import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(title: Text("Home Screen")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Obx(() {
              //   return Text(
              //     controller.counterValue.value.toString(),
              //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              //   );
              // }),

              // ElevatedButton(
              //   onPressed: () {
              //     controller.mInreamentalMethod();
              //   },
              //   child: Text("Increase"),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     controller.mDecreamentalMethod();
              //   },
              //   child: Text("Decreament"),
              // ),
              // SizedBox(height: 10),
              TextField(
                controller: controller.emailtextEditingController,
                decoration: InputDecoration(label: Text("Email")),
              ),
              SizedBox(height: 5),
              TextField(
                controller: controller.passtextEditingController,
                obscureText: true,
                decoration: InputDecoration(label: Text("Password")),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.mRegister(
                    pass: controller.passtextEditingController.text,
                    email: controller.emailtextEditingController.text,
                  );
                },
                child: Text("Register"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  controller.mLogin();
                },
                child: Text("Login"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  controller.mLogout();
                },
                child: Text("Log Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:digital_shop/app/modules/all_products/views/all_carts_view.dart';
// import 'package:digital_shop/app/routes/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// final List<Map<String, String>> categories = [
//   {
//     "name": "Electronics",
//     "image": "assets/images/electronics.png",
//   },
//   {
//     "name": "Jewelery",
//     "image": "assets/images/jewelery.png",
//   },
//   {
//     "name": "Men's Clothing",
//     "image": "assets/images/mens_clothing.png",
//   },
//   {
//     "name": "Women's Clothing",
//     "image": "assets/images/womens_clothing.png",
//   },
// ];

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             // Handle hamburger button action
//           },
//         ),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("Home"),
//             Row(
//               children: [
//                 Text("User Name"),
//                 SizedBox(width: 8),
//                 CircleAvatar(
//                   backgroundColor: Colors.grey,
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Category Section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Categories",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Get.toNamed(Routes.ALL_CARTS);
//                     },
//                     child: Text("View All"),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 8),
//               SizedBox(
//                 height: 100,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: categories.length, // Use the predefined categories
//                   itemBuilder: (context, index) {
//                     final category = categories[index];
//                     return GestureDetector(
//                       onTap: () {
//                         // Navigate to the corresponding category page
//                         Get.toNamed('/category/${category["name"]!.toLowerCase()}');
//                       },
//                       child: Container(
//                         margin: EdgeInsets.only(right: 8),
//                         width: 80,
//                         decoration: BoxDecoration(
//                           color: Colors.grey[300],
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             // Category Image
//                             Image.asset(
//                               category["image"]!,
//                               height: 50,
//                               width: 50,
//                               fit: BoxFit.cover,
//                             ),
//                             SizedBox(height: 8),
//                             // Category Name
//                             Text(
//                               category["name"]!,
//                               textAlign: TextAlign.center,
//                               style: TextStyle(fontSize: 12),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 16),
//               // Popular Products Section
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Popular Products",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       // Navigate to All Products Page
//                       Get.toNamed(Routes.ALL_PRODUCTS);
//                     },
//                     child: Text("View All"),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 8),
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 8,
//                   mainAxisSpacing: 8,
//                   childAspectRatio: 3 / 4,
//                 ),
//                 itemCount: 10, // Replace with your product count
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       // Navigate to Product Details Page
//                       Get.toNamed('/product-details');
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey[300],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.image, size: 80, color: Colors.grey),
//                           SizedBox(height: 8),
//                           Text("Product $index"),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
