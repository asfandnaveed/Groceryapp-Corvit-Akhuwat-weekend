import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.nest_cam_wired_stand,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe6e5e4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('745 Lincolin PI'),
                      ),
                  ),
                  Icon(
                    Icons.shopping_basket_outlined,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
