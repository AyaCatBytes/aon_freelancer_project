import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Content Area')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add action for the button
        },
        backgroundColor: Colors.teal,
        child: Icon(Icons.add, size: 30, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(
          height: 70,
          color: Color(0xFFBEE4E9), // Matches the light blue background color
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, "Home"),
              _buildNavItem(Icons.dashboard, "Dashboard"),
              SizedBox(width: 48), // Spacer for the floating action button
              _buildNavItem(Icons.person, "Profile"),
              _buildNavItem(Icons.settings, "Settings"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    );
  }
}

