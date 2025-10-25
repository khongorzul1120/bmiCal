import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  const BottomButton({super.key, this.onTap, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xfFEB1555),
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),

        child: Center(
          child: Text(
            title!,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
