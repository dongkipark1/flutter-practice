import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfo("50", "게시글"),
        _buildLine(),
        _buildInfo("20", "좋아요"),
        _buildLine(),
        _buildInfo("10", "공유"),
        _buildLine(),
      ],
    );
  }

  Widget _buildInfo(String count, String title){
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        SizedBox(height: 2),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
          ),
        )
      ],
    );
  }

  Widget _buildLine(){
    return Container(
      width: 2,
      height: 60,
      color: Colors.blue,
    );
  }

}
