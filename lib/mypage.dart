import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. ส่วนหัวข้อ (Title)
    final titleWidget = Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: const Text(
        'Strawberry Pavlova',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          letterSpacing: 0.5,
          fontFamily: 'Georgia',
        ),
      ),
    );

    // 2. ส่วนคำอธิบาย (Description)
    final descriptionWidget = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      child: const Text(
        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          height: 1.3,
          color: Colors.black87,
          fontWeight: FontWeight.w600,
          fontFamily: 'Georgia',
          fontStyle: FontStyle.italic,
        ),
      ),
    );

    // 3. ส่วนเรตติ้ง (Ratings)
    final ratingsWidget = Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5, (index) {
              return const Icon(
                Icons.star,
                color: Color.fromARGB(
                  220,
                  30,
                  30,
                  30,
                ), // เปลี่ยนสีดาวให้เข้มขึ้น
                size: 22,
              );
            }),
          ),
          const Text(
            '170 Reviews',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black, // เปลี่ยนเป็นสีดำเข้มสุด
            ),
          ),
        ],
      ),
    );

    // 4. ส่วนข้อมูลเวลา (Info list)
    final infoWidget = Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildInfoColumn(Icons.kitchen, 'PREP:', '25 min'),
          _buildInfoColumn(Icons.timer, 'COOK:', '1 hr'),
          _buildInfoColumn(Icons.restaurant, 'FEEDS:', '4-6'),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Strawberry Pavlova',
          style: TextStyle(fontFamily: 'Georgia', fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 171, 241),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                titleWidget,
                const SizedBox(height: 10),
                descriptionWidget,
                const SizedBox(height: 10),
                ratingsWidget,
                const SizedBox(height: 10),
                infoWidget,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.green[800], size: 28), // ไอคอนเขียวเข้มขึ้น
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black, // ป้ายหัวข้อข้อมูลสีดำเข้มสุด
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black87, // ค่าเวลาข้อมูลสีดำเข้มขึ้น
            fontWeight: FontWeight.w600, // เพิ่มความหนาของตัวหนังสือค่าเวลา
          ),
        ),
      ],
    );
  }
}
