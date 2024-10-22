import 'package:flutter/material.dart';
import 'product.dart';
import 'details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // List of products
    final List<Product> products = [
      Product(
        name: 'Shirt',
        image: 'assets/img.png',
        price: 1750,
        description: 'Stylish and Fashionable Shirt for Boys',
      ),
      Product(
        name: 'Trouser Pants',
        image: 'assets/img_1.png',
        price: 2200,
        description: 'A Pant fit for every Teen',
      ),
      Product(
        name: 'Silver Chain',
        image: 'assets/img_2.png',
        price: 3500,
        description: 'A Fashionable Accessory for Boys',
      ),
      Product(
        name: 'Leather Shoes',
        image: 'assets/img_3.png',
        price: 3700,
        description: 'Premium Quality Shoes for Man',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        backgroundColor:  Colors.purpleAccent



















































      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              Product product = products[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(product: product),
                    ),
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        product.image,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('\RS ${product.price}'),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
