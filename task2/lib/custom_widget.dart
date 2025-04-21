import 'package:flutter/material.dart';

class custom_widget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final VoidCallback onTap;

  const custom_widget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox( // نحدد ارتفاع الكرت داخل القريد
        height: 220,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // الصورة
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    height: 90,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 6),
                // العنوان
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // الوصف
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // السعر
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}