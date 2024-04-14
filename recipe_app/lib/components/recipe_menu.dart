import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.music_note, "1st"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.music_note, "2nd"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.music_note, "3rd"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.music_note, "4th"),
          SizedBox(width: 25),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text){
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}

