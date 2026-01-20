import 'package:flutter/material.dart';
import 'about.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
                  _buildNavItem(context, 'HOME', false),
                  const SizedBox(width: 30),
                  _buildNavItem(context, 'ABOUT', false),
                  const SizedBox(width: 30),
                  _buildNavItem(context, 'CONTACT', true),
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
          // Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  // Contact Content
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Column(
                      children: [
                        const Text(
                          'Contact',
                          style: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 600),
                          child: const Text(
                            'Get in touch with us for any questions or support.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 200),
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
                              onPressed: () {
                                Navigator.popUntil(context, (route) => route.isFirst);
                              },
                              child: const Text(
                                'HOME',
                                style: TextStyle(color: Colors.black, fontSize: 14),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
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
                              onPressed: () {},
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

  Widget _buildNavItem(BuildContext context, String text, bool isActive) {
    return GestureDetector(
      onTap: () {
        if (text == 'HOME') {
          Navigator.popUntil(context, (route) => route.isFirst);
        } else if (text == 'ABOUT') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AboutScreen()),
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
}