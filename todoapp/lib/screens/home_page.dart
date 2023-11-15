import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor, // Set background color for the body of screen
      appBar: _buildAppBar(), // call _buildAppBar method
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0, // Remove shadow under AppBar
      title: Row(
        // Add a Row widget to AppBar
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Add space between icon and image
        children: [
          const Icon(
            Icons.menu, // Add icon
            color: tdBlack,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(60), // Make image round
            child:
                Image.asset('assets/images/hinh1.png', width: 40), // Add image
          )
        ],
      ),
      centerTitle: true,
      backgroundColor: tdBGColor,
    );
  }
}
