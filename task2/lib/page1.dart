import 'package:flutter/material.dart';
import 'package:task2/page2.dart';
class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1tState();
}

class _page1tState extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية المتحركة
          SizedBox.expand(
            child: Image.asset('assets/background.gif', fit: BoxFit.cover),
          ),

          // طبقة شفافة لتغميق الخلفية
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // توزيع المحتوى
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // مساحة فارغة فوق
                SizedBox(height: 10),

                // النصوص بالنص
                Column(
                  children: [


                    Text(
                      'Full in love with Coffee in Blissful Delight !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      'welcome to our cozy coffee corner, where every cup is a delightful for you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // زر بأسفل الصفحة مع مسافة
                ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const page2()),
    );
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF4E342E), // بني غامق
    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15), // زيادة العرض والارتفاع
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: Text(
    'Get Started',
    style: TextStyle(
      color: Colors.white, // النص أبيض
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
),
              ],
            ),
          ),
        ],
      ),
    );
  }
}