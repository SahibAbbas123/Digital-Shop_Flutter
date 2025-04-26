import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text("Product Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Icon(Icons.image, size: 100, color: Colors.grey),
              ),
            ),
            SizedBox(height: 16),
            // Rating and Share Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 4),
                    Text("4.5"),
                    SizedBox(width: 8),
                    Text("(120 reviews)"),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    // Handle share action
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            // Product Name
            Text(
              "Product Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Price Row
            Row(
              children: [
                Text(
                  "\$100",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "20% OFF",
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
                SizedBox(width: 8),
                Text(
                  "\$80",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Stock Status
            Text(
              "In Stock",
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            SizedBox(height: 16),
            // Description
            Text(
              "This is a sample product description. It provides details about the product.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            TextButton(
              onPressed: () {
                // Handle "Show More" action
              },
              child: Text("Show More"),
            ),
            SizedBox(height: 16),
            // Quantity and Add to Cart
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         IconButton(
            //           icon: Icon(Icons.remove),
            //           onPressed: () {
            //             // Handle decrement action
            //           },
            //         ),
            //         Text("1"),
            //         IconButton(
            //           icon: Icon(Icons.add),
            //           onPressed: () {
            //             // Handle increment action
            //           },
            //         ),
            //       ],
            //     ),
            //     ElevatedButton(
            //       onPressed: () {
            //         // Handle add to cart action
            //       },
            //       child: Text("Add to Cart"),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
