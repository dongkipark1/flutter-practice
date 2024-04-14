import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar(){
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/Minji.jpg"),
      ),
    );

  }

  Widget _buildHeaderProfile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "NewJeans_Minji",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "보컬, 댄스",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "2022 NewJeans",
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
