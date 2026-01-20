import 'package:flutter/material.dart';
import 'about.dart';
import 'contact.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // App Bar
          Container(
            color: const Color(0xFFE87722),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: SafeArea(
              child: Row(
                children: [
                  // Menu Icon
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: const Icon(Icons.menu, color: Colors.black54),
                  ),
                  const Spacer(),
                  // Navigation
                  _buildNavItem(context, 'HOME', true),
                  const SizedBox(width: 30),
                  _buildNavItem(context, 'ABOUT', false),
                  const SizedBox(width: 30),
                  _buildNavItem(context, 'CONTACT', false),
                  const SizedBox(width: 30),
                  // Cart Icon
                  const Icon(Icons.shopping_cart_outlined, color: Colors.black),
                  const SizedBox(width: 20),
                  // Profile Icon
                  const CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.person, color: Colors.white, size: 20),
                  ),
                ],
              ),
            ),
          ),
          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Hero Section
                  Container(
                    color: const Color(0xFFE87722),
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Logo
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CRA\nMBL\nCO',
                              style: TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.w900,
                                height: 0.9,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                        // CTA
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Need more space?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black87,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: const Text(
                                'Try Now for Free!',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  // CRAMBLOC Section
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Box Illustration
                        SizedBox(
                          width: 200,
                          height: 200,
                          child: CustomPaint(
                            painter: BoxPainter(),
                          ),
                        ),
                        const SizedBox(width: 50),
                        // Text Content
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'CRAMBLOC',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'EXPAND YOUR SPACE. BUILD YOUR SPACE.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                'Try CRAMBLOC now with\nour free 4GB.',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black87,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: const Text('Download CRAMBLOC'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  // MORE STORAGE Section
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 80),
                    padding: const EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'MORE STORAGE',
                          style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildStorageCard('4GB', const Color(0xFFA67C52), true),
                            _buildStorageCard('12GB', const Color(0xFFFFF4CC), false),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildStorageCard('32GB', const Color(0xFFFFF4CC), false),
                            _buildStorageCard('64GB', const Color(0xFFFFF4CC), false),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  // Footer
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54, width: 2),
                          ),
                          child: const Icon(Icons.view_module, color: Colors.black54),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'HOME',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AboutScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'ABOUT',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ContactScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'CONTACT',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String text, bool isHome) {
    return GestureDetector(
      onTap: () {
        if (text == 'ABOUT') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AboutScreen()),
          );
        } else if (text == 'CONTACT') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContactScreen()),
          );
        }
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildStorageCard(String size, Color color, bool isFree) {
    return Container(
      width: 160,
      height: 160,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isFree)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'free',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          else
            const SizedBox(height: 24),
          Text(
            size,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '₱',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill;

    // Draw box illustration
    // Orange box on top
    paint.color = const Color(0xFFE87722);
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3, size.height * 0.15, size.width * 0.25, size.height * 0.25),
      paint,
    );

    // Light orange box
    paint.color = const Color(0xFFFFB366);
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.45, size.height * 0.2, size.width * 0.25, size.height * 0.25),
      paint,
    );

    // Brown box at bottom
    paint.color = const Color(0xFFA67C52);
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.25, size.height * 0.45, size.width * 0.4, size.height * 0.35),
      paint,
    );

    // Light peach box
    paint.color = const Color(0xFFFFD4A3);
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.55, size.height * 0.6, size.width * 0.2, size.height * 0.2),
      paint,
    );

    // Add borders
    paint.style = PaintingStyle.stroke;
    paint.color = Colors.black;
    paint.strokeWidth = 2;

    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.3, size.height * 0.15, size.width * 0.25, size.height * 0.25),
      paint,
    );
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.45, size.height * 0.2, size.width * 0.25, size.height * 0.25),
      paint,
    );
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.25, size.height * 0.45, size.width * 0.4, size.height * 0.35),
      paint,
    );
    canvas.drawRect(
      Rect.fromLTWH(size.width * 0.55, size.height * 0.6, size.width * 0.2, size.height * 0.2),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}