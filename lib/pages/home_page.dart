import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/components/bottom_nav.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      backgroundColor: Colors.grey[300],
    );
  }
}
