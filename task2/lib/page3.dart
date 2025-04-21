import 'package:flutter/material.dart';


class page3 extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;

  const page3({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 237, 226), // نفس لون الخلفية لو حابة توحدينها
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // زر الرجوع للخلف
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 20),

              // الصورة
              Center(
                child: Image.asset(
                  imagePath,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              // العنوان
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // الوصف
              Text(
                description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              // السعر
              Text(
                'price: $price',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.brown,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}