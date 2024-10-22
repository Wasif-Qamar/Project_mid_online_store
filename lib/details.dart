import 'package:flutter/material.dart';
import 'product.dart';

class Details extends StatelessWidget {
  final Product product;

  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 250, // Adjust height as needed
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '\RS ${product.price}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(), // Pushes the button to the bottom
            ElevatedButton(
              onPressed: () {
                // Handle adding to cart or purchase
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
