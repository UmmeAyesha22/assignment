import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductPage(),
      routes: {
        '/main': (context) => const Payment(),
      },
    );
  }
}

class button extends StatelessWidget {
  final Function()? onTap;
  const button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        decoration: BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text(
          "Buy Now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        )),
      ),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Payment method',
            style: TextStyle(
              fontSize: 20,
            ),
          )),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(70, 300, 70, 300),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Image.asset('lib/images/rocket.png'),
          ),
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Product Name',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            SizedBox(height: 17),
            Image.asset('lib/images/Tshirt.png'),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Text(
                    'Ladies T-shirt',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Fabrilife Women Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. ',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 12),
                  const Text(
                    'Price:550',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 9),
                  const SizedBox(),
                  button(
                    onTap: () => Navigator.pushNamed(context, '/main'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  //@override
  

