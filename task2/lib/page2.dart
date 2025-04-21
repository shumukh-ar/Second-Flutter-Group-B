import 'package:flutter/material.dart';
import 'package:task2/custom_widget.dart';
import 'package:task2/page3.dart';


class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 237, 226), // خلفية بيج
      body: SafeArea(
        child: Column(
          children: [
            // سيرش بار شكلي
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.brown.withOpacity(0.2),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const TextField(
                  enabled: false, // شكلي فقط
                  decoration: InputDecoration(
                    hintText: "Search coffee",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),

            // شبكة المنتجات
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.75, // لتنسيق الشكل
                  children: [

                    // أول عنصر
                    custom_widget(
                      imagePath: 'assets/americano.jpg',
                      title: 'Americano',
                      description: 'Espresso diluted with hot water',
                      price: '\$3',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page3(
                              imagePath: 'assets/americano.jpg',
                              title: 'Americano',
                              description: 'Espresso diluted with hot water',
                              price: '\$3',
                            ),
                          ),
                        );
                      },
                    ),

                    // ثاني عنصر
                    custom_widget(
                      imagePath: 'assets/flat white.jpg',
                      title: 'Flat White',
                      description: 'Smooth espresso with velvety steamed milk',
                      price: '\$5',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page3(
                              imagePath: 'assets/flat white.jpg',
                              title: 'Flat White',
                              description: 'Smooth espresso with velvety steamed milk',
                              price: '\$5',
                            ),
                          ),
                        );
                      },
                    ),

                    // ثالث عنصر
                    custom_widget(
                      imagePath: 'assets/cortado.jpg',
                      title: 'Cortado',
                      description: 'Equal parts espresso and steamed milk',
                      price: '\$4.50',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page3(imagePath: 'assets/cortado.jpg',
                              title: 'Cortado',
                              description: 'Equal parts espresso and steamed milk',
                              price: '\$4.50',
                            ),
                          ),
                        );
                      },
                    ),

                    // رابع عنصر
                    custom_widget(
                      imagePath: 'assets/mocha.jpg',
                      title: 'Mocha',
                      description: 'Espresso with chocolate and steamed milk',
                      price: '\$3.75',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page3(
                              imagePath: 'assets/mocha.jpg',
                              title: 'Mocha',
                              description: 'Espresso with chocolate and steamed milk',
                              price: '\$3.75',
                            ),
                          ),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}